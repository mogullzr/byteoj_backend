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

-- auto-generated definition
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
    constraint competition_ac_problems_algorithm_uuid_competition_id_idx_uindex
        unique (uuid, competition_id, idx),
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

-- auto-generated definition
create table course
(
    course_id                bigint           not null comment '课程id'
        primary key,
    course_title             varchar(256)     not null comment '课程名称',
    course_title_description varchar(256)     not null comment '课程描述',
    create_name              varchar(256)     not null comment '创建者用户名',
    avatar                   text             not null comment '课程头像地址',
    num                      bigint default 0 not null comment '参加人数',
    start_time               datetime         null comment '课程开始时间',
    end_time                 datetime         null comment '结束时间',
    is_delete                int    default 0 not null comment '逻辑删除',
    create_time              datetime         not null comment '创建时间',
    constraint course_pk2
        unique (course_id)
);

-- auto-generated definition
create table course_problems
(
    course_problem_id      bigint auto_increment comment '课程问题ID'
        primary key,
    course_problems        text             not null comment '每个专栏的标题名称',
    problem_algorithm_type text             not null comment '每个专栏里的类别名称',
    problem_id_list        text             not null comment '每个专栏类别的题目ID列表',
    course_id              bigint           not null comment '课程id',
    create_time            datetime         not null comment '创建时间',
    update_time            datetime         not null comment '更新时间',
    is_delete              bigint default 0 not null comment '逻辑删除',
    constraint course_problems_pk2
        unique (course_problem_id),
    constraint course_problems_course_course_id_fk
        foreign key (course_id) references course (course_id)
)
    comment '课程专栏信息';

-- auto-generated definition
create table course_problems_ac_num
(
    ac_num_id  bigint auto_increment comment 'ID'
        primary key,
    course_id  bigint        not null comment '课程ID',
    problem_id bigint        not null comment '问题ID',
    num        int default 0 not null comment '通过题目的数量',
    constraint course_problems_ac_num_pk2
        unique (ac_num_id),
    constraint course_problems_ac_num_course_course_id_fk
        foreign key (course_id) references course (course_id)
)
    comment '某课程某题目的通过人数';

-- auto-generated definition
create table course_user_ac_problem
(
    course_ac_problem_id bigint auto_increment comment 'ID'
        primary key,
    uuid                 bigint           not null comment '用户ID',
    num                  bigint default 0 not null comment '通过题目数量',
    course_id            bigint           not null comment '课程ID',
    constraint course_user_ac_problem_pk2
        unique (course_ac_problem_id),
    constraint course_user_ac_problem_course_course_id_fk
        foreign key (course_id) references course (course_id)
)
    comment '用户AC题目基本信息';

-- auto-generated definition
create table course_user_ac_status
(
    ac_status_id           bigint auto_increment comment 'ID'
        primary key,
    problem_id             bigint           not null comment '问题ID',
    problem_name           varchar(256)     not null comment '问题名称',
    course_problems_ac_num bigint default 0 not null comment '某课程某题目的通过人数',
    course_id              bigint           not null comment '课程ID',
    constraint course_user_ac_status_pk2
        unique (ac_status_id),
    constraint course_user_ac_status_course_course_id_fk
        foreign key (course_id) references course (course_id)
)
    comment '用户每道题目的代码提交状态';

-- auto-generated definition
create table user_last_enter
(
    id           bigint auto_increment comment 'ID'
        primary key,
    uuid         bigint                                                             null comment '用户ID',
    url          varchar(256) default 'https://www.byteoj.com/problems/algorithm/1' not null comment '题目链接',
    problem_name varchar(256)                                                       null comment '题目编号 + 题目名称',
    constraint user_last_enter_pk2
        unique (id),
    constraint user_last_enter_user_uuid_fk
        foreign key (uuid) references user (uuid)
);

-- auto-generated definition
create table oj_competition
(
    id          bigint auto_increment comment 'ID'
        primary key,
    title       varchar(255)      not null comment '竞赛标题',
    platform    varchar(255)      not null comment '举办平台',
    pattern     int               not null comment '赛制类别,0表示ACM赛制,1表示OI赛制,2表示IOI赛制',
    description varchar(255)      null comment '比赛相关信息',
    url         varchar(255)      null comment '比赛链接',
    joins       int               null comment '比赛参加人数',
    start_time  datetime          not null comment '比赛开始时间',
    end_time    datetime          not null comment '比赛结束时间',
    update_time datetime          not null comment '信息更新时间',
    picture     varchar(255)      not null comment '比赛海报',
    is_delete   tinyint default 0 not null comment '逻辑删除',
    constraint oj_competition_pk
        unique (id)
);

-- auto-generated definition
create table user_role
(
    id          int auto_increment comment 'id'
        primary key,
    role        varchar(64)                        not null comment '角色',
    description varchar(256)                       null comment '描述',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '角色表' collate = utf8mb4_unicode_ci;

INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (1, 'admin', 'boss管理员', '2025-04-02 21:47:42', '2025-04-02 23:47:00', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (2, 'userAdmin', '用户管理员', '2025-04-02 21:47:42', '2025-04-03 13:07:38', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (3, 'problemAlgorithmAdmin', '算法题目管理员', '2025-04-02 23:47:00', '2025-04-02 23:48:01', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (4, 'problemMath408Admin', '数学408题目管理员', '2025-04-02 23:48:01', '2025-04-02 23:48:01', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (5, 'competitionAdmin', '竞赛管理员', '2025-04-02 23:48:58', '2025-04-02 23:48:58', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (6, 'postAdmin', '帖子管理员', '2025-04-02 23:49:12', '2025-04-02 23:49:12', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (7, 'courseAdmin', '课程管理员', '2025-04-02 23:49:26', '2025-04-02 23:49:26', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (8, 'weChatAdmin', '聊天室管理员', '2025-04-02 23:49:47', '2025-04-02 23:49:47', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (9, 'recordAdmin', '提交记录管理员', '2025-04-02 23:50:12', '2025-04-02 23:50:12', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (10, 'pictureAdmin', '图片管理员', '2025-04-02 23:50:33', '2025-04-02 23:50:33', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (11, 'videoAdmin', '视频管理员', '2025-04-02 23:50:47', '2025-04-02 23:50:47', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (12, 'user', '用户', '2025-04-03 13:07:38', '2025-04-03 13:07:38', 0);
INSERT INTO byteoj.user_role (id, role, description, create_time, update_time, is_delete) VALUES (13, '自定义管理员', '自定义管理员', '2025-04-03 21:39:11', '2025-04-03 21:39:11', 0);

-- auto-generated definition
create table user_role_relation
(
    id          int auto_increment comment 'id'
        primary key,
    uuid        bigint                             not null comment '用户id',
    role_id     int                                not null comment '角色id',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '用户角色关联表' collate = utf8mb4_unicode_ci;

create index idx_role_id
    on user_role_relation (role_id);

create index idx_user_id
    on user_role_relation (uuid);

INSERT INTO byteoj.user_role_relation (id, uuid, role_id, create_time, update_time, is_delete) VALUES (15, 38, 22, '2025-04-03 14:59:09', '2025-04-03 14:59:09', 0);
INSERT INTO byteoj.user_role_relation (id, uuid, role_id, create_time, update_time, is_delete) VALUES (16, 9, 1, '2025-04-03 21:35:01', '2025-04-03 21:35:01', 0);


-- auto-generated definition
create table user_role_auth
(
    id          int auto_increment comment 'id'
        primary key,
    role_id     int                                not null comment '角色id',
    auth_id     int                                not null comment '权限id',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '用户角色关联表' collate = utf8mb4_unicode_ci;

create index idx_auth_id
    on user_role_auth (auth_id);

create index idx_role_id
    on user_role_auth (role_id);

INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (1, 1, 1, '2025-04-03 00:54:11', '2025-04-03 00:54:11', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (2, 2, 2, '2025-04-03 00:54:34', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (3, 3, 3, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (4, 3, 4, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (5, 4, 5, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (6, 4, 6, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (7, 5, 7, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (8, 5, 8, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (9, 6, 9, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (10, 6, 10, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (11, 7, 11, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (12, 7, 12, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (13, 8, 13, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (14, 8, 14, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (15, 8, 15, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (16, 9, 16, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (17, 9, 17, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (18, 9, 18, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (19, 10, 19, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (20, 10, 20, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (21, 11, 21, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (22, 12, 22, '2025-04-03 00:54:35', '2025-04-03 13:02:50', 0);
INSERT INTO byteoj.user_role_auth (id, role_id, auth_id, create_time, update_time, is_delete) VALUES (24, 13, 4, '2025-04-03 21:39:11', '2025-04-03 21:39:11', 0);

-- auto-generated definition
create table user_auth
(
    id          int auto_increment comment 'id'
        primary key,
    name        varchar(256)                       null comment '权限名称',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '权限表' collate = utf8mb4_unicode_ci;
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (1, '管理员管理', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (2, '用户管理', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (3, '算法试题创建', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (4, '算法试题管理', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (5, '数学408试题创建', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (6, '数学408试题管理', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (7, '管理员级别比赛创建', '2025-04-03 00:24:47', '2025-04-03 00:39:44', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (8, '管理员级别比赛管理', '2025-04-03 00:24:57', '2025-04-03 00:39:44', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (9, '帖子信息管理', '2025-04-03 00:25:48', '2025-04-03 00:25:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (10, '评论信息管理', '2025-04-03 00:25:48', '2025-04-03 00:25:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (11, '专题创建', '2025-04-03 00:26:45', '2025-04-03 00:26:45', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (12, '专题信息管理', '2025-04-03 00:26:45', '2025-04-03 00:26:45', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (13, '聊天室管理', '2025-04-03 00:26:45', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (14, '聊天信息管理', '2025-04-03 00:27:31', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (15, '私人聊天记录管理', '2025-04-03 00:27:31', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (16, '算法提交记录管理', '2025-04-03 00:27:48', '2025-04-03 00:27:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (17, '数学提交记录管理', '2025-04-03 00:28:13', '2025-04-03 00:28:13', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (18, '计算机408提交记录管理', '2025-04-03 00:28:13', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (19, '用户图片管理', '2025-04-03 00:29:02', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (20, '全局图片管理', '2025-04-03 00:29:02', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (21, '视频信息管理', '2025-04-03 00:29:16', '2025-04-03 00:29:16', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (22, '普通用户', '2025-04-03 00:33:30', '2025-04-03 00:52:43', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (1, '管理员管理', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (2, '用户管理', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (3, '算法试题创建', '2025-04-02 21:47:42', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (4, '算法试题管理', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (5, '数学408试题创建', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (6, '数学408试题管理', '2025-04-03 00:24:47', '2025-04-03 00:24:47', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (7, '管理员级别比赛创建', '2025-04-03 00:24:47', '2025-04-03 00:39:44', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (8, '管理员级别比赛管理', '2025-04-03 00:24:57', '2025-04-03 00:39:44', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (9, '帖子信息管理', '2025-04-03 00:25:48', '2025-04-03 00:25:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (10, '评论信息管理', '2025-04-03 00:25:48', '2025-04-03 00:25:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (11, '专题创建', '2025-04-03 00:26:45', '2025-04-03 00:26:45', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (12, '专题信息管理', '2025-04-03 00:26:45', '2025-04-03 00:26:45', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (13, '聊天室管理', '2025-04-03 00:26:45', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (14, '聊天信息管理', '2025-04-03 00:27:31', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (15, '私人聊天记录管理', '2025-04-03 00:27:31', '2025-04-03 00:27:31', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (16, '算法提交记录管理', '2025-04-03 00:27:48', '2025-04-03 00:27:48', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (17, '数学提交记录管理', '2025-04-03 00:28:13', '2025-04-03 00:28:13', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (18, '计算机408提交记录管理', '2025-04-03 00:28:13', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (19, '用户图片管理', '2025-04-03 00:29:02', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (20, '全局图片管理', '2025-04-03 00:29:02', '2025-04-03 00:29:02', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (21, '视频信息管理', '2025-04-03 00:29:16', '2025-04-03 00:29:16', 0);
INSERT INTO byteoj.user_auth (id, name, create_time, update_time, is_delete) VALUES (22, '普通用户', '2025-04-03 00:33:30', '2025-04-03 00:52:43', 0);

-- auto-generated definition
create table user_api_auth
(
    id          int auto_increment comment 'id'
        primary key,
    api_id      int                                not null comment 'API id',
    auth_id     int                                not null comment '权限id',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '权限API关联表' collate = utf8mb4_unicode_ci;

create index idx_api_id
    on user_api_auth (api_id);

create index idx_auth_id
    on user_api_auth (auth_id);

INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (1, 1, 1, '2025-04-03 00:30:47', '2025-04-03 00:30:47', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (2, 2, 1, '2025-04-03 00:30:47', '2025-04-03 00:31:11', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (3, 3, 1, '2025-04-03 00:30:47', '2025-04-03 00:31:11', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (4, 4, 1, '2025-04-03 00:30:47', '2025-04-03 00:31:11', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (5, 5, 2, '2025-04-03 00:30:47', '2025-04-03 00:32:31', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (6, 6, 2, '2025-04-03 00:30:47', '2025-04-03 00:32:31', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (7, 7, 2, '2025-04-03 00:30:47', '2025-04-03 00:32:31', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (8, 8, 2, '2025-04-03 00:30:47', '2025-04-03 00:32:31', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (9, 28, 3, '2025-04-03 00:30:47', '2025-04-03 00:36:03', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (10, 36, 3, '2025-04-03 00:30:47', '2025-04-03 00:36:03', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (11, 29, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (12, 30, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (13, 31, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (14, 32, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (15, 33, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (16, 34, 4, '2025-04-03 00:30:47', '2025-04-03 00:38:09', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (17, 69, 11, '2025-04-03 00:30:47', '2025-04-03 00:42:29', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (18, 70, 12, '2025-04-03 00:30:47', '2025-04-03 00:45:22', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (19, 71, 12, '2025-04-03 00:30:47', '2025-04-03 00:45:22', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (20, 72, 12, '2025-04-03 00:30:47', '2025-04-03 00:45:22', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (21, 10, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (22, 11, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (23, 12, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (24, 13, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (25, 14, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (26, 15, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (27, 16, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (28, 17, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (29, 18, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (30, 19, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (31, 20, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (32, 21, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (33, 22, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (34, 23, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (35, 24, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (36, 25, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (37, 26, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (38, 27, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (39, 35, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (40, 36, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (41, 37, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (42, 38, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (43, 39, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (44, 40, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (45, 41, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (46, 42, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (47, 43, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (48, 44, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (49, 45, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (50, 46, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (51, 47, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (52, 48, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (53, 49, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (54, 50, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (55, 51, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (56, 52, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (57, 53, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (58, 54, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (59, 55, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (60, 56, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (61, 57, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (62, 58, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (63, 59, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (64, 60, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (65, 61, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (66, 62, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (67, 63, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (68, 64, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (69, 65, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (70, 66, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (71, 67, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (72, 68, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (73, 73, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (74, 74, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (75, 75, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (76, 76, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (77, 79, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (78, 80, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (79, 81, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (80, 82, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (81, 83, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (82, 84, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (83, 85, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (84, 86, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (85, 87, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (86, 88, 22, '2025-04-03 00:51:24', '2025-04-03 00:51:24', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (87, 89, 1, '2025-04-03 21:29:41', '2025-04-03 21:29:41', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (88, 90, 1, '2025-04-03 21:29:41', '2025-04-03 21:29:41', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (89, 95, 1, '2025-04-03 21:29:41', '2025-04-03 21:29:41', 0);
INSERT INTO byteoj.user_api_auth (id, api_id, auth_id, create_time, update_time, is_delete) VALUES (90, 96, 1, '2025-04-03 21:29:41', '2025-04-03 21:29:41', 0);

-- auto-generated definition
create table user_api_auth
(
    id          int auto_increment comment 'id'
        primary key,
    api_id      int                                not null comment 'API id',
    auth_id     int                                not null comment '权限id',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment '权限API关联表' collate = utf8mb4_unicode_ci;

create index idx_api_id
    on user_api_auth (api_id);

create index idx_auth_id
    on user_api_auth (auth_id);

-- auto-generated definition
create table user_api
(
    id          int auto_increment comment 'id'
        primary key,
    path        varchar(512)                       not null comment 'API路径',
    description varchar(256)                       null comment '描述',
    api_type    int                                not null comment 'API认证类型',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除',
    constraint path
        unique (path)
)
    comment 'API表' collate = utf8mb4_unicode_ci;

INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (1, '/api/user/BOSS/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (2, '/api/user/BOSS/cancel', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (3, '/api/user/BOSS/get', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (4, '/api/user/BOSS/set', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (5, '/api/user/admin/ban', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (6, '/api/user/admin/cancel', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (7, '/api/user/admin/get', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (8, '/api/user/admin/getPage', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (9, '/api/user/admin/login', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (10, '/api/user/current', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (11, '/api/user/email/send', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (12, '/api/user/getBack', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (13, '/api/user/login', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (14, '/api/user/login/email', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (15, '/api/user/logout', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (16, '/api/user/modify', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (17, '/api/user/picture/get', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (18, '/api/user/picture/user/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (19, '/api/user/picture/user/get/', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (20, '/api/user/picture/user/set', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (21, '/api/user/register', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (22, '/api/user/search', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (23, '/api/user/search/uuid', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (24, '/api/user/upload', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (25, '/api/search/all/vo', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (26, '/api/webSocket/getAllMessage', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (27, '/api/getPublicKey', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (28, '/api/problem/algorithm/admin/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (29, '/api/problem/algorithm/admin/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (30, '/api/problem/algorithm/admin/modify', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (31, '/api/problem/algorithm/admin/testCase/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (32, '/api/problem/algorithm/admin/testCase/get', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (33, '/api/problem/algorithm/admin/testCaseFile/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (34, '/api/problem/algorithm/admin/testCaseFile/get', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (35, '/api/problem/algorithm/get/tags', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (36, '/api/problem/algorithm/get/tagsPlusCategory', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (37, '/api/problem/algorithm/judge/submit', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (38, '/api/problem/algorithm/judge/test', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (39, '/api/problem/algorithm/record/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (40, '/api/problem/algorithm/records', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (41, '/api/problem/algorithm/records/page/sum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (42, '/api/problem/algorithm/records/recordId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (43, '/api/problem/algorithm/records/user/page', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (44, '/api/problem/algorithm/records/user/sum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (45, '/api/problem/algorithm/search', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (46, '/api/problem/algorithm/search/difficulty/sum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (47, '/api/problem/algorithm/search/problem', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (48, '/api/problem/algorithm/search/problemId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (49, '/api/problem/algorithm/search/problemLast', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (50, '/api/problem/algorithm/search/problems', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (51, '/api/problem/algorithm/search/user/daily', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (52, '/api/problem/algorithm/set/problemLast', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (53, '/api/posts/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (54, '/api/posts/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (55, '/api/posts/modify', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (56, '/api/posts/post/answer/problemId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (57, '/api/posts/post/comment/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (58, '/api/posts/post/comment/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (59, '/api/posts/post/comment/thumbs', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (60, '/api/posts/post/thumbStatus', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (61, '/api/posts/post/thumbs', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (62, '/api/posts/search', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (63, '/api/posts/search/comment', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (64, '/api/posts/search/page', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (65, '/api/posts/search/postsId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (66, '/api/posts/top', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (67, '/api/posts/top/cancel', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (68, '/api/ai/ask', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (69, '/api/course/admin/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (70, '/api/course/admin/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (71, '/api/course/admin/problem/set', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (72, '/api/course/admin/user/set', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (73, '/api/course/search/courseId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (74, '/api/course/search/pageNum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (75, '/api/course/search/problems', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (76, '/api/course/search/rank', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (77, '/api/competition/admin/algorithm/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (78, '/api/competition/admin/delete', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (79, '/api/competition/get/rank/excel', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (80, '/api/competition/join', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (81, '/api/competition/join/cancel', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (82, '/api/competition/search/competitionId', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (83, '/api/competition/search/page', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (84, '/api/competition/search/rank/pageNum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (85, '/api/competition/search/records/pageNum', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (86, '/api/competition/search/top', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (87, '/api/competition/user/add', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (88, '/api/competition/user/modify', null, 1, '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (89, '/api/user/BOSS/authorize', null, 1, '2025-04-03 13:54:14', '2025-04-03 13:54:14', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (90, '/api/user/BOSS/auth/get', null, 1, '2025-04-03 13:54:14', '2025-04-03 13:54:14', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (95, '/api/user/BOSS/role/set', null, 1, '2025-04-03 21:28:22', '2025-04-03 21:28:22', 0);
INSERT INTO byteoj.user_api (id, path, description, api_type, create_time, update_time, is_delete) VALUES (96, '/api/user/BOSS/role/get', null, 1, '2025-04-03 21:28:22', '2025-04-03 21:28:22', 0);

-- auto-generated definition
create table user_api_type
(
    id          int auto_increment comment 'id'
        primary key,
    name        varchar(64)                        not null comment '认证的类型',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除'
)
    comment 'API认证类型表' collate = utf8mb4_unicode_ci;

INSERT INTO byteoj.user_api_type (id, name, create_time, update_time, is_delete) VALUES (1, 'role', '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api_type (id, name, create_time, update_time, is_delete) VALUES (2, 'activity', '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
INSERT INTO byteoj.user_api_type (id, name, create_time, update_time, is_delete) VALUES (3, 'competition', '2025-04-02 21:47:42', '2025-04-02 21:47:42', 0);
