-- MySQL：上线前先执行一次；不要复用微信 open_id。
ALTER TABLE `user`
    ADD COLUMN `github_id` VARCHAR(32) NULL COMMENT 'GitHub numeric user ID',
    ADD UNIQUE KEY `uk_user_github_id` (`github_id`);
