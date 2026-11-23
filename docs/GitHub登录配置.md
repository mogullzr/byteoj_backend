# GitHub 登录配置

## 上线前配置

1. 在后端启动前，对 MySQL 执行一次 `sql/add_github_login.sql`。脚本新增 `user.github_id` 和唯一索引；独立于微信 `open_id`。此脚本不是自动迁移，不要重复执行，也不要先启动 JPA 自动建列再执行。
2. 创建 GitHub OAuth App，把 Authorization callback URL 配置为后端回调，例如 `https://www.byteoj.com/api/user/github/callback`。不是前端 `/authorize/redirect`。
3. 填写后端 `src/main/resources/application.yml` 的 `github` 配置，或优先通过后端环境变量注入：

   ```dotenv
   GITHUB_CLIENT_ID=填写OAuthApp的ClientID
   GITHUB_CLIENT_SECRET=填写OAuthApp的ClientSecret
   GITHUB_CALLBACK_URL=https://www.byteoj.com/api/user/github/callback
   ```

   YAML 的 `${GITHUB_CLIENT_SECRET:}` 冒号后为空值位置，也可替换为本地开发值；真实密钥不要提交到仓库。不要配置到前端 `VUE_APP_*`，不要写入 Pinia、localStorage 或浏览器 Cookie。
4. 现有 `domain.url_1` 应指向前端站点根地址。前端入口使用现有 `OpenAPI.BASE`，指向后端 `/api/user/github/authorize`。现有邮件发送服务与 Redis 必须可用。
5. 生产使用 HTTPS。Session Cookie 设为 HttpOnly、Secure、SameSite=Lax。本地使用 HTTP 时，仅本地设置 `SESSION_COOKIE_SECURE=false`，并使前端 API 地址、后端回调和 GitHub App 设置一致。反向代理不要记录回调的完整查询串（包含一次性 code/state）；应用操作日志已跳过 GitHub OAuth 和绑定请求的敏感参数。

## 账号流程

- 点击微信图标右侧 GitHub 图标，经后端生成随机 state、PKCE 参数，密钥和令牌交换都留在后端。
- 回调按 GitHub 数字 ID 查找用户；首次登录创建未绑定账号，不直接信任 GitHub 的公开邮箱，不授予业务角色。
- 未绑定账号跳转 `/user/complete`。后端同时拦截业务请求，仅允许当前资料、发送邮箱验证码、绑定、退出及 OPTIONS。
- QQ 邮箱必须填写数字 QQ 邮箱，并验证收到的 6 位验证码。验证码原子消费，不能重复使用；后续数据库操作失败需重新获取验证码。
- QQ 邮箱未注册：在当前账号设置邮箱和密码，授予默认角色 12。
- QQ 邮箱已有账号：验证邮箱后转移 GitHub 身份到原账号，保留原 uuid、密码和微信绑定，删除临时账号；被封禁或已绑定其他 GitHub 的账号不允许合并。
- 数据库事务成功提交后才更新登录 Session。已绑定账号再次使用 GitHub 登录，直接进入首页，不重复创建账号或插入已有角色。
- 此次没有恢复已停用的微信授权接口，也未重写旧微信绑定分支。

## 已做验证与待验证

- 后端可离线编译，`GithubLoginTest` 覆盖 state/PKCE、授权取消与过期、回调重放、首次登录、已有账号、封禁账号、未绑定拦截、QQ 验证码及账号合并。
- 两个修改的 Vue 页面通过 Vue SFC 脚本和模板编译，新增 API helper 通过 ESLint。仓库现有 ESLint 顶层 parser 配置无法直接解析 `.vue`，未在本次改动中全局调整。
- 尚未填入真实 OAuth App 凭证，也未对实际 GitHub、MySQL、Redis、邮件服务进行端到端联调；SQL 未代为执行。

## 验证码误报过期排查

QQ 邮件验证码由 `EmailSendUtil` 经 `RedisUtils.set` 存储，其摘要会被编码为 JSON 字符串。GitHub 绑定校验需先解码再比较摘要，Lua 原子消费仍使用 Redis 原始值。已补充此格式的回归测试，并区分未发送/过期、输入错误、缓存异常和已使用等提示；邮件或缓存保存失败不再返回发送成功。

注意：首次 GitHub 授权目前仍先创建待绑定用户行。QQ 已有账号时仅更新原账号的 GitHub 身份，临时行被逻辑删除（不会物理移除）；QQ 无账号时补全当前待绑定行。绑定阶段不另行插入用户。

如果提示原文为“授权会话已过期，请重新登录”，这是 OAuth 回调未找到 Session，区别于 QQ 邮箱验证码错误。检查授权入口与回调是否属于同一后端域名、是否携带 Session Cookie、是否使用 HTTP 而启用了 Secure Cookie，以及是否切换服务实例或重启。当前 prod 回调为线上域名；本地发起授权但回调线上无法读取本地 Session。
