create table algorithm_test_case
(
    id          bigint auto_increment comment 'ID'
        primary key,
    problem_id  bigint   not null comment '问题ID',
    input       longtext null comment '输入样例',
    output      longtext null comment '输出样例',
    create_time datetime null comment '创建时间',
    constraint algorithm_test_case_pk
        unique (id),
    constraint algorithm_test_case_pk2
        unique (id)
);

create table language_command
(
    id             bigint auto_increment comment 'ID'
        primary key,
    language_id    int          null comment '编程语言ID',
    command        varchar(255) null comment '计算机命令，比如gcc++...,java....',
    sequence       int          null comment '次序',
    create_by_id   bigint       null comment '创建人id',
    create_by_name varchar(256) null comment '创建人name',
    create_time    datetime     null comment '创建时间',
    update_by_id   bigint       null comment '修改人id',
    update_by_name varchar(256) null comment '修改人name',
    update_time    datetime     null comment '修改时间',
    status         int          null comment '0.编译中1.运行'
)
    comment '编程语言信息表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_bank
(
    problem_id      bigint auto_increment
        primary key,
    short_name      varchar(256)  null comment '简称',
    english_name    varchar(256)  null comment '英文名字',
    chinese_name    varchar(256)  null comment '中文名字',
    difficulty_name varchar(10)   null comment '难度',
    create_by_id    bigint        null comment '修改人id',
    create_by_name  varchar(256)  null comment '修改人name',
    create_time     datetime      null comment '修改时间',
    update_by_id    bigint        null comment '修改人id',
    update_by_name  varchar(256)  null comment '修改人name',
    update_time     datetime      null comment '修改时间',
    status          int           null comment '状态',
    is_delete       int default 0 null comment '逻辑删除',
    source_name     varchar(256)  null comment '来源',
    test_total      bigint        null comment '尝试总数',
    ac_total        bigint        null comment 'AC人数',
    description     longtext      null comment '题目描述'
)
    comment 'algorithm题目基本信息表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_bank_detailed
(
    id         bigint auto_increment comment 'ID'
        primary key,
    problem_id bigint null comment '问题id',
    md_cn      text   null comment '中文md',
    md_en      text   null comment '英文md'
)
    comment 'algorithm问题细节信息表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_limit
(
    id             bigint auto_increment comment 'ID'
        primary key,
    problem_id     bigint        null comment '问题id',
    stdout_max     int           null comment '文件大小限制 mb',
    stderr_max     int           null comment '文件大小限制 mb',
    cpu_limit      int           null comment 'CPU时间限制 秒',
    memory_limit   int           null comment '内存大小限制 mb',
    proc_limit     int           null comment '线程数量限制',
    create_by_id   bigint        null comment '创建人id',
    create_by_name varchar(256)  null comment '创建人name',
    create_time    datetime      null comment '创建时间',
    update_time    datetime      null comment '修改时间',
    update_by_id   bigint        null comment '修改人id',
    update_by_name varchar(256)  null comment '修改人name',
    status         int           null comment '状态',
    is_delete      int default 0 null comment '逻辑删除',
    constraint problem_algorithm_limit_ibfk_1
        foreign key (problem_id) references problem_algorithm_bank (problem_id)
)
    comment 'algorithm问题信息关联表' collate = utf8mb4_unicode_ci;

create index problem_id
    on problem_algorithm_limit (problem_id);

create table problem_algorithm_tags_classify_relation
(
    category_id   int          not null comment '类别ID'
        primary key,
    category_name varchar(256) not null comment '类别名称',
    constraint problem_algorithm_tags_classify_relation_pk2
        unique (category_id)
)
    comment '类别关系表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_tags_relation
(
    tag_id   int auto_increment comment '标签id'
        primary key,
    tag_name varchar(256) not null comment '问题名称'
)
    comment 'algorithm问题标签关联表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_tags
(
    id         bigint auto_increment comment 'ID'
        primary key,
    tag_id     int           not null comment '标签id',
    problem_id bigint        not null comment '问题ID',
    is_delete  int default 0 null,
    constraint fk_algorithm_tags_problem_id
        foreign key (problem_id) references problem_algorithm_bank (problem_id)
            on update cascade on delete cascade,
    constraint fk_algorithm_tags_relation_id
        foreign key (tag_id) references problem_algorithm_tags_relation (tag_id)
            on update cascade on delete cascade
)
    comment 'algorithm问题标签类型表' collate = utf8mb4_unicode_ci;

create table problem_algorithm_tags_classify
(
    id       bigint auto_increment comment 'ID'
        primary key,
    tag_id   int not null comment '算法标签ID',
    category int not null comment '类别名称',
    constraint problem_algorithm_tags_classify_ibfk_1
        foreign key (tag_id) references problem_algorithm_tags_relation (tag_id)
            on update cascade on delete cascade
)
    comment '标签分类' collate = utf8mb4_unicode_ci;

create index tag_id
    on problem_algorithm_tags_classify (tag_id);

create table problem_math408_bank
(
    problem_id      bigint auto_increment
        primary key,
    problem_name    varchar(256)  null comment '简称',
    difficulty_name varchar(10)   null comment '难度',
    source_name     varchar(256)  null comment '来源',
    description     text          null comment '题目描述',
    create_by_id    bigint        null comment '修改人id',
    create_by_name  varchar(256)  null comment '修改人name',
    create_time     datetime      null comment '修改时间',
    update_by_id    bigint        null comment '修改人id',
    update_by_name  varchar(256)  null comment '修改人name',
    update_time     datetime      null comment '修改时间',
    status          int           null comment '0表示该题目为数学类型题目，1表示该题目为408考研试题',
    option_type     int           null comment '0表示简答题，1表示单选题，2表示多选题，3表示填空题',
    is_delete       int default 0 null comment '逻辑删除'
)
    comment 'math题目基本信息表' collate = utf8mb4_unicode_ci;

create table problem_math408_options
(
    id           bigint auto_increment comment '选项 ID'
        primary key,
    problem_id   bigint        not null comment '所属问题的 ID',
    option_text  varchar(256)  null comment '选项内容',
    option_index varchar(10)   not null comment '选项索引，如 A, B, C，D 等',
    is_delete    int default 0 null
)
    comment '题目选项存储表' collate = utf8mb4_unicode_ci;

create table problem_math408_correct_answers
(
    id            bigint auto_increment comment '正确答案ID'
        primary key,
    problem_id    bigint not null comment '所属问题的ID',
    correct_index text   null comment '参考正确答案（选择，填空，简答还有编程大题）',
    constraint idx_problem_id_correct_index
        unique (problem_id),
    constraint fk_problem_correct_answers_problem_id
        foreign key (problem_id) references problem_math408_options (problem_id)
            on update cascade on delete cascade
)
    comment '题目正确选项存储表' collate = utf8mb4_unicode_ci;

create index idx_problem_id
    on problem_math408_options (problem_id);

create table problem_math408_tags_relation
(
    tag_id   bigint auto_increment comment '标签ID'
        primary key,
    tag_name varchar(256) not null comment '标签名'
)
    comment 'math知识点存储表' collate = utf8mb4_unicode_ci;

create table problem_math408_tags
(
    id         bigint auto_increment comment 'ID'
        primary key,
    tag_id     bigint        not null comment '标签ID',
    problem_id bigint        not null comment '问题ID',
    is_delete  int default 0 null,
    constraint problem_math408_tags_ibfk_1
        foreign key (problem_id) references problem_math408_bank (problem_id)
            on update cascade on delete cascade,
    constraint problem_math408_tags_ibfk_2
        foreign key (tag_id) references problem_math408_tags_relation (tag_id)
            on update cascade on delete cascade
)
    comment 'math知识点存储表' collate = utf8mb4_unicode_ci;

create index problem_id
    on problem_math408_tags (problem_id);

create index tag_id
    on problem_math408_tags (tag_id);

create table public_chat_rooms
(
    room_id     bigint auto_increment comment '房间号'
        primary key,
    room_name   varchar(256) default '学习聊天室' not null comment '房间名称',
    description varchar(256)                      not null comment '描述',
    online_num  bigint       default 0            null comment '聊天室的人數'
)
    comment '公共聊天室表' collate = utf8mb4_unicode_ci;

create table submission_algorithm_records
(
    id            bigint auto_increment comment 'ID'
        primary key,
    submission_id bigint        not null comment '提交记录ID',
    create_time   date          not null comment '创建时间',
    is_delete     int default 0 null comment '逻辑删除',
    time_used     int           null,
    result        text          not null comment '允许状态',
    memory_used   int           null comment '空间花销'
);

create table user
(
    uuid        bigint auto_increment comment 'ID'
        primary key,
    account     varchar(256)                       not null comment '账号',
    password    varchar(256)                       null comment '密码',
    username    varchar(256)                       not null comment '用户名',
    avatar      text                               null comment '头像',
    tags        varchar(256)                       null comment '标签',
    hobby       varchar(256)                       null comment '爱好',
    email       varchar(256)                       null comment '邮箱',
    phone       varchar(256)                       null comment '电话',
    gender      varchar(256)                       null comment '性别',
    school      varchar(256)                       null comment '学校',
    profile     text                               null comment '简介',
    rating      int      default 1200              not null comment '竞赛分数',
    role        int      default 1                 not null comment '用户角色：user/admin/ban 1/2/3 用户/管理员/封禁账户',
    birth       datetime default CURRENT_TIMESTAMP null comment '生日',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除',
    readings    int      default 0                 not null,
    url         varchar(1024)                      null comment '个人网站地址',
    constraint user_pk
        unique (account)
)
    comment '用户表' collate = utf8mb4_unicode_ci;

create table ac_algorithm_problem
(
    id              bigint auto_increment
        primary key,
    problem_id      bigint        null comment '题目id',
    user_id         bigint        null comment '用户id',
    create_time     datetime      null comment '创建人时间',
    update_time     datetime      null comment '修改人时间',
    status          int default 1 null comment '状态',
    is_delete       int default 0 null comment '逻辑删除',
    difficulty_name varchar(10)   null comment '题目难度',
    constraint ac_algorithm_problem_ibfk_1
        foreign key (problem_id) references problem_algorithm_bank (problem_id),
    constraint ac_algorithm_problem_ibfk_2
        foreign key (user_id) references user (uuid)
)
    comment 'AC情况存储表' collate = utf8mb4_bin;

create index problem_id
    on ac_algorithm_problem (problem_id);

create table ac_math408_problem
(
    id             bigint auto_increment
        primary key,
    problem_id     bigint        null comment '题目id',
    uuid           bigint        null comment '用户id',
    create_by_id   bigint        null comment '创建人id',
    create_by_name varchar(128)  null comment '创建人name',
    create_time    datetime      null comment '创建人时间',
    update_by_id   bigint        null comment '修改人id',
    update_by_name varchar(128)  null comment '修改人name',
    update_time    datetime      null comment '修改人时间',
    status         int           null comment '状态',
    is_delete      int default 0 null comment '逻辑删除',
    constraint ac_math408_problem___fk2
        foreign key (uuid) references user (uuid),
    constraint ac_math408_problem_ibfk_1
        foreign key (problem_id) references problem_math408_bank (problem_id)
            on update cascade on delete cascade
)
    comment 'mathAC情况存储表' collate = utf8mb4_bin;

create table competitions
(
    competition_id   bigint auto_increment comment '比赛id'
        primary key,
    competition_name varchar(256)      not null comment '比赛名称',
    start_time       datetime          not null comment '比赛开始时间',
    end_time         datetime          not null comment '比赛结束时间',
    avatar           text              not null comment '比赛头像',
    description      text              not null comment '比赛描述',
    password         varchar(256)      null comment '比赛密码',
    created_by       bigint            not null comment '用户名字',
    pattern          tinyint default 0 not null comment '0:ACM赛制;1:IOI赛制;2:OI赛制',
    status           tinyint default 0 not null comment '0表示无密码， 1表示有密码',
    is_delete        tinyint default 0 not null comment '逻辑删除',
    joins            bigint  default 0 not null comment '参加比赛的人数',
    type             int     default 0 null comment '比赛创建类型，0表示个人创建赛，1表示管理员创建赛',
    constraint competitions_ibfk_1
        foreign key (created_by) references user (uuid)
)
    comment '比赛基本信息表' collate = utf8mb4_unicode_ci;

create table competition_ac_problems_algorithm
(
    id             int              not null comment 'ID'
        primary key,
    uuid           bigint           null comment '用户ID',
    competition_id bigint           not null comment '竞赛ID',
    idx            varchar(256)     not null comment '题目索引',
    status         int              null comment '通过情况，0表示通过，1表示没通过',
    test_num       bigint default 0 null comment '本题尝试次数,ac后不再变化',
    after_status   int    default 1 not null comment '赛后这道题目的zh',
    constraint competition_ac_problems_algorithm_pk2
        unique (id),
    constraint competition_ac_problems_algorithm_competitions_competition_id_fk
        foreign key (competition_id) references competitions (competition_id),
    constraint competition_ac_problems_algorithm_user_uuid_fk
        foreign key (uuid) references user (uuid)
);

create index created_by
    on competitions (created_by);

create table competitions_problems_algorithm
(
    id             bigint auto_increment comment 'ID'
        primary key,
    competition_id bigint           not null comment '比赛ID',
    problem_id     bigint           not null comment '问题ID',
    idx            varchar(256)     null comment '題目对应索引b',
    problem_name   varchar(256)     null comment '重新命名的题目名称',
    test_total     bigint default 0 not null comment '尝试次数',
    ac_total       bigint default 0 not null comment '通过人数',
    score          bigint default 0 not null comment '题目分数',
    constraint competitions_problems_algorithm_ibfk_1
        foreign key (competition_id) references competitions (competition_id),
    constraint competitions_problems_algorithm_ibfk_2
        foreign key (problem_id) references problem_algorithm_bank (problem_id)
)
    comment '比赛题目关联表' collate = utf8mb4_unicode_ci;

create index competition_id
    on competitions_problems_algorithm (competition_id);

create index problem_id
    on competitions_problems_algorithm (problem_id);

create table competitions_problems_math408
(
    id             bigint auto_increment comment 'ID'
        primary key,
    competition_id bigint not null comment '比赛ID',
    problem_id     bigint not null comment '问题ID',
    constraint competitions_problems_math408_ibfk_1
        foreign key (competition_id) references competitions (competition_id),
    constraint competitions_problems_math408_ibfk_2
        foreign key (problem_id) references problem_math408_bank (problem_id)
)
    comment '比赛题目关联表' collate = utf8mb4_unicode_ci;

create index competition_id
    on competitions_problems_math408 (competition_id);

create index problem_id
    on competitions_problems_math408 (problem_id);

create table competitions_user
(
    id             bigint auto_increment comment 'ID'
        primary key,
    uuid           bigint                               not null comment '用户ID',
    competition_id bigint                               not null comment '比赛ID',
    join_time      datetime   default CURRENT_TIMESTAMP not null comment '参加时间',
    is_participant tinyint(1) default 1                 not null comment '0参加,1不参加',
    score          bigint     default 0                 not null comment '非ACM赛制使用:总分数',
    ac_num         bigint                               null comment '通过次数',
    time_penalty   int                                  null,
    constraint competitions_user_ibfk_1
        foreign key (uuid) references user (uuid),
    constraint competitions_user_ibfk_2
        foreign key (competition_id) references competitions (competition_id)
)
    comment '用户参与表' collate = utf8mb4_unicode_ci;

create index competition_id
    on competitions_user (competition_id);

create index uuid
    on competitions_user (uuid);

create table posts
(
    post_id     bigint auto_increment comment '帖子id'
        primary key,
    title       varchar(256)                       not null comment '帖子标题',
    content     longtext                           not null comment '帖子内容',
    uuid        bigint                             not null comment '作者ID',
    thumbs_up   bigint   default 0                 not null comment '点赞数量',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除',
    reading     bigint   default 0                 not null comment '浏览量',
    location    varchar(256)                       null,
    problem_id  bigint   default 0                 not null comment '帖子所属题目id',
    status      int      default 0                 null comment '0表示普通帖子，1表示答疑帖子，2表示题解帖子',
    constraint posts_ibfk_1
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade
)
    comment '帖子表' collate = utf8mb4_unicode_ci;

create index uuid
    on posts (uuid);

create table posts_comment
(
    comment_id         bigint auto_increment comment '评论ID'
        primary key,
    content            text                               not null comment '回复内容',
    post_id            bigint                             not null comment '评论所属帖子ID',
    root_comment_id    bigint   default 0                 null comment '顶级评论ID,0表示为顶级评论',
    uuid               bigint                             not null comment '所属用户ID',
    comment_like_count bigint   default 0                 not null comment '评论点赞次数',
    to_comment_id      bigint   default 0                 not null comment '回复的评论ID',
    create_time        datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    is_delete          tinyint  default 0                 not null comment '是否删除',
    constraint posts_comment_ibfk_1
        foreign key (post_id) references posts (post_id)
            on update cascade on delete cascade,
    constraint posts_comment_ibfk_2
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade
)
    comment '评论表' collate = utf8mb4_unicode_ci;

create index post_id
    on posts_comment (post_id);

create index root_comment_id
    on posts_comment (root_comment_id);

create index uuid
    on posts_comment (uuid);

create table posts_comment_thumbs
(
    id         bigint not null comment 'ID'
        primary key,
    post_id    bigint not null comment '帖子ID',
    comment_id bigint not null comment '评论ID',
    uuid       bigint not null comment '用户ID',
    constraint posts_comment_thumbs_ibfk_1
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade,
    constraint posts_comment_thumbs_ibfk_2
        foreign key (post_id) references posts (post_id)
            on update cascade on delete cascade,
    constraint posts_comment_thumbs_ibfk_3
        foreign key (comment_id) references posts_comment (comment_id)
            on update cascade on delete cascade
)
    comment '评论点赞关系表' collate = utf8mb4_unicode_ci;

create index comment_id
    on posts_comment_thumbs (comment_id);

create index post_id
    on posts_comment_thumbs (post_id);

create index uuid
    on posts_comment_thumbs (uuid);

create table posts_tags
(
    id          bigint auto_increment comment 'ID'
        primary key,
    post_id     bigint                             not null comment '帖子id',
    tag_name    varchar(256)                       null comment '标签名',
    uuid        bigint                             null comment '用户id',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    is_delete   tinyint  default 0                 not null comment '是否删除',
    constraint fk_tag_user
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade,
    constraint posts_tags_ibfk_1
        foreign key (post_id) references posts (post_id)
            on update cascade on delete cascade
)
    comment '帖子标签表' collate = utf8mb4_unicode_ci;

create index idx_user_id
    on posts_tags (uuid)
    comment '用户id索引';

create index post_id
    on posts_tags (post_id);

create table posts_thumbs
(
    id      bigint not null comment 'ID'
        primary key,
    post_id bigint not null comment '帖子ID',
    uuid    bigint not null comment '用户ID',
    constraint posts_thumbs_ibfk_1
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade,
    constraint posts_thumbs_ibfk_2
        foreign key (post_id) references posts (post_id)
            on update cascade on delete cascade
)
    comment '帖子标签点赞表' collate = utf8mb4_unicode_ci;

create index post_id
    on posts_thumbs (post_id);

create index uuid
    on posts_thumbs (uuid);

create table public_chat_messages
(
    message_id      bigint auto_increment comment '消息ID'
        primary key,
    room_id         bigint   default 0                 null comment '聊天室ID,0表示为私人聊天',
    uuid            bigint                             not null comment '用户ID',
    avatar          varchar(256)                       not null comment '头像地址',
    message_content text                               not null comment '消息内容',
    create_time     datetime default CURRENT_TIMESTAMP not null comment '发送时间',
    to_uuid         bigint   default 0                 null comment '发送给的用户id,0表示公开发送',
    constraint public_chat_messages_ibfk_1
        foreign key (room_id) references public_chat_rooms (room_id)
            on update cascade on delete cascade,
    constraint public_chat_messages_ibfk_2
        foreign key (uuid) references user (uuid)
            on update cascade on delete cascade
)
    comment '公共聊天室消息表' collate = utf8mb4_unicode_ci;

create index room_id
    on public_chat_messages (room_id);

create index uuid
    on public_chat_messages (uuid);

create table submissions_algorithm
(
    submission_id  bigint auto_increment comment '提交记录ID'
        primary key,
    uuid           bigint                                                                                                                                                                                                                                                                        not null comment '用户id',
    problem_id     bigint                                                                                                                                                                                                                                                                        not null comment '题目id',
    source_code    text                                                                                                                                                                                                                                                                          null comment '具体代码',
    code_length    int      default 0                                                                                                                                                                                                                                                            not null comment '代码长度',
    languages      enum ('C', 'C++', 'Java', 'Python')                                                                                                                                                                                                                                           not null,
    submit_time    datetime default CURRENT_TIMESTAMP                                                                                                                                                                                                                                            not null comment '代码提交时间',
    results        enum ('Pending', 'Accepted', 'Wrong Answer', 'Time Limit Exceeded', 'Memory Limit Exceeded', 'Compile Error', 'Output Limit Exceeded', 'Segmentation Fault', 'Float Point Exception', 'Non Zero Exit Status', 'Runtime Error', 'Signalled', 'Internal Error', 'Params Error') null comment '代码提交状态',
    score          int      default 0                                                                                                                                                                                                                                                            not null comment '得分',
    competition_id bigint   default 0                                                                                                                                                                                                                                                            not null comment '竞赛ID',
    constraint submissions_algorithm_ibfk_1
        foreign key (uuid) references user (uuid),
    constraint submissions_algorithm_ibfk_2
        foreign key (problem_id) references problem_algorithm_bank (problem_id)
)
    comment '评测表' collate = utf8mb4_unicode_ci;

create table submission_algorithm_details
(
    detail_id     bigint auto_increment comment '详细表id'
        primary key,
    submission_id bigint           not null comment '提交记录ID',
    time_used     int    default 0 null comment '运行时间',
    memory_used   bigint default 0 null comment '内存使用',
    constraint submission_algorithm_details_ibfk_1
        foreign key (submission_id) references submissions_algorithm (submission_id)
)
    comment '评测详细结果表' collate = utf8mb4_unicode_ci;

create index submission_id
    on submission_algorithm_details (submission_id);

create index problem_id
    on submissions_algorithm (problem_id);

create index uuid
    on submissions_algorithm (uuid);

create table user_background_picture
(
    id              bigint auto_increment comment 'ID'
        primary key,
    uuid            bigint        not null comment '用户ID',
    picture_address varchar(1024) not null comment '图片地址',
    constraint user_background_picture_pk2
        unique (id)
)
    comment '用户背景图片存储表';

create table website_background_pictures
(
    id              bigint auto_increment comment '图片id'
        primary key,
    picture_address text                               not null comment '图片地址',
    create_time     datetime default CURRENT_TIMESTAMP not null comment '图片的上传时间',
    uuid            bigint                             not null comment '用户id',
    constraint website_background_pictures_pk2
        unique (id),
    constraint website_background_pictures_user_uuid_fk
        foreign key (uuid) references user (uuid)
)
    comment '网站的背景图片集';