package com.example.backend.service.Impl.user;

import com.alibaba.fastjson.JSONObject;
import com.example.backend.exception.BusinessException;
import com.example.backend.interceptor.FangshuaInterceptor;
import com.example.backend.mapper.UserMapper;
import com.example.backend.mapper.UserRoleRelationMapper;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.user.UserModifyRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.util.ReflectionTestUtils;

import static com.example.backend.constant.UserConstant.USER_LOGIN_STATE;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

class GithubLoginTest {
    private UserServiceImpl service;
    private UserMapper users;
    private UserRoleRelationMapper roles;
    private org.springframework.data.redis.core.StringRedisTemplate redis;
    private org.springframework.data.redis.core.ValueOperations<String, String> values;
    private MockHttpServletRequest request;
    private MockHttpServletResponse response;

    @BeforeEach
    void setUp() {
        service = spy(new UserServiceImpl());
        users = mock(UserMapper.class);
        roles = mock(UserRoleRelationMapper.class);
        ReflectionTestUtils.setField(service, "userMapper", users);
        ReflectionTestUtils.setField(service, "userRoleRelationMapper", roles);
        ReflectionTestUtils.setField(service, "githubClientId", "test-client");
        ReflectionTestUtils.setField(service, "githubClientSecret", "server-only-secret");
        ReflectionTestUtils.setField(service, "githubCallbackUrl", "https://example.test/api/user/github/callback");
        ReflectionTestUtils.setField(service, "domain", "https://example.test/");
        redis = mock(org.springframework.data.redis.core.StringRedisTemplate.class);
        values = mock(org.springframework.data.redis.core.ValueOperations.class);
        when(redis.opsForValue()).thenReturn(values);
        ReflectionTestUtils.setField(service, "githubVerificationRedis", redis);
        request = new MockHttpServletRequest();
        response = new MockHttpServletResponse();
        JSONObject profile = new JSONObject();
        profile.put("id", 123456L);
        profile.put("login", "octocat");
        profile.put("email", "public@qq.com");
        doReturn(profile).when(service).fetchGithubProfile(anyString(), anyString());
    }

    private String authorize() {
        service.getGithubAuthorizationUrl(request);
        return (String) request.getSession().getAttribute("GITHUB_OAUTH_STATE");
    }

    @Test
    void authorizationUsesRandomStateAndPkceWithoutSecret() {
        String url = service.getGithubAuthorizationUrl(request);
        String first = (String) request.getSession().getAttribute("GITHUB_OAUTH_STATE");
        assertTrue(url.contains("code_challenge_method=S256"));
        assertTrue(url.contains("state=" + first));
        assertFalse(url.contains("server-only-secret"));
        assertFalse(url.contains("code_verifier"));
        assertNotEquals(first, authorize());
    }

    @Test
    void missingConfigurationIsRejected() {
        ReflectionTestUtils.setField(service, "githubClientSecret", "");
        assertThrows(BusinessException.class, () -> service.getGithubAuthorizationUrl(request));
    }

    @Test
    void invalidExpiredCancelledAndReplayedCallbacksNeverFetchProfile() throws Exception {
        assertThrows(BusinessException.class, () -> service.userGithubLogin("code", "state", null, request, response));
        String state = authorize();
        assertThrows(BusinessException.class, () -> service.userGithubLogin("code", "wrong", null, request, response));
        assertThrows(BusinessException.class, () -> service.userGithubLogin("code", state, null, request, response));
        String expired = authorize();
        request.getSession().setAttribute("GITHUB_OAUTH_STARTED", System.currentTimeMillis() - 601_000);
        assertThrows(BusinessException.class, () -> service.userGithubLogin("code", expired, null, request, response));
        String cancelled = authorize();
        assertThrows(BusinessException.class, () -> service.userGithubLogin(null, cancelled, "access_denied", request, response));
        verify(service, never()).fetchGithubProfile(anyString(), anyString());
        verifyNoInteractions(users, roles);
    }

    @Test
    void firstLoginCreatesPendingAccountWithoutTrustingGithubEmailOrGrantingRoles() throws Exception {
        when(users.insert(any(User.class))).thenAnswer(call -> {
            ((User) call.getArgument(0)).setUuid(7L);
            return 1;
        });
        String state = authorize();
        String oldSession = request.getSession().getId();
        service.userGithubLogin("code", state, null, request, response);
        User user = (User) request.getSession().getAttribute(USER_LOGIN_STATE);
        assertEquals("123456", user.getGithub_id());
        assertEquals("github_123456", user.getAccount());
        assertNull(user.getEmail());
        assertNull(user.getOpen_id());
        assertNotEquals(oldSession, request.getSession().getId());
        assertEquals("https://example.test/user/complete", response.getRedirectedUrl());
        verifyNoInteractions(roles);
    }

    @Test
    void existingBoundAccountIsReusedWithoutDuplicateRole() throws Exception {
        User user = new User();
        user.setUuid(9L);
        user.setGithub_id("123456");
        user.setEmail("12345@qq.com");
        user.setRole(1);
        when(users.selectOne(any())).thenReturn(user);
        when(roles.selectCount(any())).thenReturn(1L);
        service.userGithubLogin("code", authorize(), null, request, response);
        assertSame(user, request.getSession().getAttribute(USER_LOGIN_STATE));
        assertEquals("https://example.test/home", response.getRedirectedUrl());
        verify(users, never()).insert(any(User.class));
        verify(roles, never()).insert(any());
    }

    @Test
    void bannedGithubAccountCannotLogIn() {
        User user = new User();
        user.setRole(3);
        when(users.selectOne(any())).thenReturn(user);
        assertThrows(BusinessException.class, () -> service.userGithubLogin("code", authorize(), null, request, response));
        assertNull(request.getSession().getAttribute(USER_LOGIN_STATE));
    }

    @Test
    void unboundAccountCannotCallBusinessEndpointsEvenWithoutAccessAnnotation() throws Exception {
        User user = new User();
        user.setGithub_id("123456");
        request.getSession().setAttribute(USER_LOGIN_STATE, user);
        request.setRequestURI("/api/problem/submit");
        request.setContextPath("/api");
        request.setMethod("POST");
        FangshuaInterceptor interceptor = new FangshuaInterceptor();
        assertThrows(BusinessException.class, () -> interceptor.preHandle(request, response, null));
        request.setRequestURI("/api/user/modify");
        assertTrue(interceptor.preHandle(request, response, null));
        request.setMethod("GET");
        assertThrows(BusinessException.class, () -> interceptor.preHandle(request, response, null));
        request.setRequestURI("/api/user/current");
        assertTrue(interceptor.preHandle(request, response, null));
    }

    @Test
    void githubBindingRejectsInvalidEmailBeforeAnyRedisOrWrite() {
        User user = new User();
        user.setUuid(7L);
        user.setGithub_id("123456");
        request.getSession().setAttribute(USER_LOGIN_STATE, user);
        when(users.selectOne(any())).thenReturn(user);
        UserModifyRequest data = new UserModifyRequest();
        data.setUuid(7L);
        data.setEmail("attacker@example.test");
        assertThrows(BusinessException.class, () -> service.UserModify(data, request));
        verify(users, never()).updateById(any(User.class));
    }
    private User pendingAccount() {
        User pending = new User();
        pending.setUuid(7L);
        pending.setGithub_id("123456");
        request.getSession().setAttribute(USER_LOGIN_STATE, pending);
        return pending;
    }

    private UserModifyRequest bindingRequest() {
        UserModifyRequest data = new UserModifyRequest();
        data.setUuid(7L);
        data.setEmail("12345@qq.com");
        data.setPassword("test-password");
        data.setConfirm_password("test-password");
        data.setConfirmNumber("123456");
        return data;
    }

    private void verifiedCode() {
        String hash = org.springframework.util.DigestUtils.md5DigestAsHex(
                (com.example.backend.utils.EmailSendUtil.SALT + "123456").getBytes(java.nio.charset.StandardCharsets.UTF_8));
        when(values.get(anyString())).thenReturn(com.example.backend.utils.JsonUtils.toStr(hash));
        doReturn(1L).when(redis).execute(any(org.springframework.data.redis.core.script.RedisScript.class), anyList(), anyString());
    }

    @Test
    void wrongCodeCannotBindOrMergeAccount() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending);
        when(values.get(anyString())).thenReturn("wrong-hash");
        assertThrows(BusinessException.class, () -> service.UserModify(bindingRequest(), request));
        verify(users, never()).updateById(any(User.class));
        verify(users, never()).deleteById(any(java.io.Serializable.class));
    }

    @Test
    void newQqBindingSetsPasswordGrantsRoleAndRefreshesSession() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending, pending, null);
        when(users.updateById(any(User.class))).thenReturn(1);
        when(roles.selectCount(any())).thenReturn(0L);
        verifiedCode();
        assertTrue(service.UserModify(bindingRequest(), request));
        assertEquals("12345@qq.com", pending.getEmail());
        assertNotEquals("test-password", pending.getPassword());
        verify(roles).insert(any());
        assertSame(pending, request.getSession().getAttribute(USER_LOGIN_STATE));
    }

    @Test
    void mergePreservesExistingPasswordWechatAndUserId() {
        User pending = pendingAccount();
        User existing = new User();
        existing.setUuid(99L);
        existing.setRole(1);
        existing.setPassword("original-password-hash");
        existing.setOpen_id("original-wechat-id");
        existing.setEmail("12345@qq.com");
        when(users.selectOne(any())).thenReturn(pending, pending, existing);
        when(users.updateById(any(User.class))).thenReturn(1);
        when(roles.selectCount(any())).thenReturn(1L);
        verifiedCode();
        assertTrue(service.UserModify(bindingRequest(), request));
        verify(users, never()).insert(any(User.class));
        assertSame(existing, request.getSession().getAttribute(USER_LOGIN_STATE));
        assertEquals(99L, existing.getUuid());
        assertEquals("original-password-hash", existing.getPassword());
        assertEquals("original-wechat-id", existing.getOpen_id());
        assertEquals("123456", existing.getGithub_id());
        verify(users).deleteById(7L);
        verify(roles, never()).insert(any());
    }

    @Test
    void alreadyLinkedQqCannotBeOverwritten() {
        User pending = pendingAccount();
        User existing = new User();
        existing.setGithub_id("another-github");
        when(users.selectOne(any())).thenReturn(pending, pending, existing);
        verifiedCode();
        assertThrows(BusinessException.class, () -> service.UserModify(bindingRequest(), request));
        verify(users, never()).updateById(any(User.class));
    }

    @Test
    void sessionAndRedirectAreDeferredUntilDatabaseCommit() throws Exception {
        User user = new User();
        user.setUuid(7L);
        user.setGithub_id("123456");
        when(users.selectOne(any())).thenReturn(user);
        String state = authorize();
        org.springframework.transaction.support.TransactionSynchronizationManager.initSynchronization();
        try {
            service.userGithubLogin("code", state, null, request, response);
            assertNull(request.getSession().getAttribute(USER_LOGIN_STATE));
            assertNull(response.getRedirectedUrl());
            for (org.springframework.transaction.support.TransactionSynchronization callback :
                    org.springframework.transaction.support.TransactionSynchronizationManager.getSynchronizations()) {
                callback.afterCommit();
            }
            assertSame(user, request.getSession().getAttribute(USER_LOGIN_STATE));
            assertEquals("https://example.test/user/complete", response.getRedirectedUrl());
        } finally {
            org.springframework.transaction.support.TransactionSynchronizationManager.clearSynchronization();
        }
    }

    @Test
    void consumedVerificationCodeCannotBeReused() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending);
        verifiedCode();
        doReturn(0L).when(redis).execute(any(org.springframework.data.redis.core.script.RedisScript.class), anyList(), anyString());
        assertThrows(BusinessException.class, () -> service.UserModify(bindingRequest(), request));
        verify(users, never()).updateById(any(User.class));
    }

    @Test
    void jsonEncodedCodeWrittenByEmailSenderCanBindAndIsConsumedAsStored() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending, pending, null);
        when(users.updateById(any(User.class))).thenReturn(1);
        when(roles.selectCount(any())).thenReturn(0L);
        verifiedCode();
        String hash = org.springframework.util.DigestUtils.md5DigestAsHex(
                (com.example.backend.utils.EmailSendUtil.SALT + "123456").getBytes(java.nio.charset.StandardCharsets.UTF_8));
        // 邮件发送使用 RedisUtils.set，它通过 JsonUtils.toStr 编码字符串。
        String stored = com.example.backend.utils.JsonUtils.toStr(hash);
        when(values.get(anyString())).thenReturn(stored);
        assertTrue(service.UserModify(bindingRequest(), request));
        verify(redis).execute(any(org.springframework.data.redis.core.script.RedisScript.class),
                eq(java.util.Collections.singletonList("email_code12345@qq.com")), eq(stored));
        verify(users, never()).insert(any(User.class));
    }

    @Test
    void missingCodeAndIncorrectCodeHaveDifferentMessagesAndDoNotConsumeCode() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending);
        BusinessException missing = assertThrows(BusinessException.class,
                () -> service.UserModify(bindingRequest(), request));
        assertTrue(missing.getMessage().contains("已过期或尚未发送"));
        verifiedCode();
        UserModifyRequest data = bindingRequest();
        data.setConfirmNumber("654321");
        BusinessException wrong = assertThrows(BusinessException.class, () -> service.UserModify(data, request));
        assertTrue(wrong.getMessage().contains("验证码错误"));
        assertFalse(wrong.getMessage().contains("过期"));
        verify(redis, never()).execute(any(org.springframework.data.redis.core.script.RedisScript.class), anyList(), anyString());
        verify(users, never()).updateById(any(User.class));
    }

    @Test
    void pastedCodeWithWhitespaceStillMatchesEncodedRedisValue() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending, pending, null);
        when(users.updateById(any(User.class))).thenReturn(1);
        when(roles.selectCount(any())).thenReturn(0L);
        verifiedCode();
        UserModifyRequest data = bindingRequest();
        data.setConfirmNumber(" 123456 ");
        assertTrue(service.UserModify(data, request));
        verify(users, never()).insert(any(User.class));
    }

    @Test
    void invalidCachedJsonIsRejectedWithoutConsumingOrUpdatingAccount() {
        User pending = pendingAccount();
        when(users.selectOne(any())).thenReturn(pending);
        when(values.get(anyString())).thenReturn("\"broken");
        BusinessException error = assertThrows(BusinessException.class,
                () -> service.UserModify(bindingRequest(), request));
        assertTrue(error.getMessage().contains("状态异常"));
        verify(redis, never()).execute(any(org.springframework.data.redis.core.script.RedisScript.class), anyList(), anyString());
        verify(users, never()).updateById(any(User.class));
    }

}
