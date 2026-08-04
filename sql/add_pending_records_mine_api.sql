INSERT INTO user_api (path, description, api_type, create_time, update_time, is_delete)
SELECT '/api/problem/algorithm/records/pending/mine', '查询当前用户的 Pending 提交摘要', 1, NOW(), NOW(), 0
WHERE NOT EXISTS (
    SELECT 1
    FROM user_api
    WHERE path = '/api/problem/algorithm/records/pending/mine'
);

INSERT INTO user_api_auth (api_id, auth_id, create_time, update_time, is_delete)
SELECT api.id, 22, NOW(), NOW(), 0
FROM user_api api
WHERE api.path = '/api/problem/algorithm/records/pending/mine'
  AND NOT EXISTS (
      SELECT 1
      FROM user_api_auth relation
      WHERE relation.api_id = api.id
        AND relation.auth_id = 22
  );
