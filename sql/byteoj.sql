create table account_fund
(
    id           bigint auto_increment comment 'ID'
        primary key,
    create_date  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date  datetime default CURRENT_TIMESTAMP null comment '更新时间',
    qq           varchar(255)                       not null comment 'QQ号',
    fund         varchar(10)                        not null comment '金额',
    status       tinyint  default 0                 not null comment '0未支付/1支付/2退款',
    out_trade_no text                               not null comment '商单号',
    uuid         bigint                             not null comment '用户ID',
    course_id    int                                null,
    course_title text                               null comment '课程标题',
    username     text                               null comment '用户名',
    is_delete    tinyint  default 0                 null comment '逻辑删除',
    wx_trade_no  text                               null comment 'wx',
    constraint account_fund_pk_2
        unique (id)
);

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

create table course
(
    course_id                bigint           not null comment '课程id'
        primary key,
    course_title             varchar(256)     not null comment '课程名称',
    course_title_description varchar(256)     not null comment '课程标题描述',
    create_name              varchar(256)     not null comment '创建者用户名',
    avatar                   text             not null comment '课程头像地址',
    num                      bigint default 0 not null comment '参加人数',
    start_time               datetime         null comment '课程开始时间',
    end_time                 datetime         null comment '结束时间',
    pay                      varchar(10)      null,
    is_delete                int    default 0 not null comment '逻辑删除',
    create_time              datetime         not null comment '创建时间',
    course_description       text             null comment '课程描述',
    constraint course_pk2
        unique (course_id)
);

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

create table course_problems_type
(
    type_id         bigint auto_increment comment 'ID'
        primary key,
    course_id       bigint       not null comment '课程ID',
    course_problems varchar(256) null comment '课程名称',
    constraint course_problems_type_pk2
        unique (type_id)
);

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

create table log_exception
(
    id             int auto_increment comment '异常日志ID'
        primary key,
    module         varchar(255)                       not null comment '异常功能模块',
    description    varchar(255)                       null comment '异常描述',
    type           varchar(255)                       not null comment '请求方法GET/POST/PUT/DELETE等',
    request_param  text                               not null comment '异常请求参数',
    code           int      default 0                 not null comment '状态码',
    operator_id    bigint                             not null comment '操作人员ID',
    method         varchar(255)                       not null comment '操作方法',
    url            varchar(255)                       not null comment '请求URL',
    ip             varchar(255)                       not null comment '请求IP',
    operation_time bigint                             not null comment '操作时长',
    browser        varchar(255)                       null comment '浏览器',
    error_message  text                               not null comment '错误信息',
    os             varchar(255)                       null comment '操作系统',
    create_time    datetime default CURRENT_TIMESTAMP not null comment '异常时间'
)
    comment '异常日志';

create table log_operation
(
    id             int auto_increment comment '操作日志ID'
        primary key,
    module         varchar(255)                       not null comment '操作的功能模块',
    description    varchar(255)                       null comment '操作描述',
    type           varchar(255)                       not null comment '请求方法GET/POST/PUT/DELETE等',
    request_param  text                               not null comment '操作的请求参数',
    response_param longtext                           not null comment '操作的返回参数',
    code           int      default 0                 not null comment '状态码',
    operator_id    bigint                             not null comment '操作人员ID',
    method         varchar(255)                       not null comment '操作方法',
    url            varchar(255)                       not null comment '请求URL',
    ip             varchar(255)                       not null comment '请求IP',
    browser        varchar(255)                       null comment '浏览器',
    operation_time bigint                             not null comment '操作时长',
    os             varchar(255)                       null comment '操作系统',
    create_time    datetime default CURRENT_TIMESTAMP not null comment '操作时间'
)
    comment '操作日志';

create table log_website_info
(
    id          bigint                             not null comment 'ID'
        primary key,
    module      varchar(1024)                      null comment '更新模块',
    description varchar(1024)                      null comment '更新内容描述',
    is_delete   tinyint  default 0                 null comment '逻辑删除',
    create_date datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date datetime default CURRENT_TIMESTAMP null comment '更新时间',
    constraint log_website_info_pk_2
        unique (id)
)
    comment '网站日志信息';

create table monitor_user
(
    id          int                                not null comment 'ID'
        primary key,
    client_id   varchar(255)                       not null,
    username    varchar(255)                       not null comment '+',
    status      int      default 0                 not null comment '0123',
    create_time datetime default CURRENT_TIMESTAMP not null,
    update_time datetime default CURRENT_TIMESTAMP not null,
    is_delete   tinyint  default 0                 not null,
    constraint monitor_user_pk_2
        unique (id)
)
    charset = utf8mb3;

create table oj_competition
(
    id          bigint auto_increment comment 'ID'
        primary key,
    title       varchar(255)      not null,
    platform    varchar(255)      not null,
    pattern     int               not null comment ',0ACM,1OI,2IOI',
    url         varchar(255)      null,
    joins       int               null,
    start_time  datetime          not null,
    end_time    datetime          not null,
    update_time datetime          not null,
    picture     varchar(255)      not null,
    is_delete   tinyint default 0 not null,
    constraint oj_competition_pk
        unique (id)
);

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
    description     longtext      null comment '题目描述',
    vid             varchar(1024) null
)
    comment 'algorithm题目基本信息表' collate = utf8mb4_unicode_ci;

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
    is_delete      int default 0 not null comment '逻辑删除',
    run_code       text          null comment '评测代码',
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

create table problem_daily_info
(
    id         bigint auto_increment comment 'ID'
        primary key,
    uuid       bigint            not null comment '用户ID',
    problem_id bigint            null comment '问题',
    is_select  tinyint default 0 not null comment '是否选中',
    constraint problem_daily_info_pk_2
        unique (id)
);

create table problem_exam
(
    id          bigint auto_increment comment 'ID'
        primary key,
    exam_name   varchar(255)                           not null comment '考试名称',
    password    varchar(255)                           null comment '密码',
    author      varchar(255)                           not null comment '作者',
    picture     varchar(255)                           null comment '图片链接',
    joins       int      default 0                     not null comment '参加人数',
    start_time  datetime default (now())               null comment '开始时间',
    end_time    datetime default '2099-12-31 23:59:59' null comment '结束时间',
    time        int                                    not null comment '考试时间(min)',
    total_score int      default 0                     null comment '总分',
    status      tinyint  default 0                     not null comment '0表示自由考试(可多次提交)，1表示开启监控(仅允许提交一次),2表示自由练习(写题过程可以直接提交某题查看答案)',
    create_time datetime default CURRENT_TIMESTAMP     null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP     null comment '更新时间',
    is_delete   tinyint  default 0                     null comment '逻辑删除',
    constraint problem_exam_pk_2
        unique (id)
)
    comment '考试';

create table problem_exam_record
(
    id           bigint auto_increment comment 'ID'
        primary key,
    exam_user_id bigint                             not null comment '用户报名记录ID',
    problem_id   bigint                             not null comment '问题ID',
    uuid         bigint                             not null comment '用户ID',
    answer       text                               not null comment '答案',
    score        int                                null comment '此题得分',
    ai_advise    text                               null comment 'AI修改建议',
    create_date  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date  datetime default CURRENT_TIMESTAMP null comment '更新时间',
    is_delete    tinyint  default 0                 not null comment '逻辑删除',
    constraint problem_exam_record_pk_2
        unique (id)
)
    comment '考试提交记录表';

create table problem_exam_tissue
(
    id          bigint auto_increment comment 'ID'
        primary key,
    problem_id  bigint                             not null comment '试题ID',
    exam_id     bigint                             not null comment '考试ID',
    score       int                                not null comment '此题分值',
    type        int                                not null comment '0简答，1单选，2多选，3填空，4算法',
    status      int                                null comment '0数学，1 408，2 政治，3算法',
    create_date datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date datetime default CURRENT_TIMESTAMP null comment '更新时间',
    is_delete   tinyint  default 0                 null comment '逻辑删除',
    constraint problem_exam_tissue_pk_2
        unique (id)
)
    comment '考试试题信息';

create table problem_exam_user
(
    id               bigint auto_increment comment 'ID'
        primary key,
    exam_id          bigint                             not null comment '考试ID',
    uuid             bigint                             not null comment '用户ID',
    username         varchar(256)                       not null comment '用户名',
    score_option     int                                null comment '选择题分值',
    status           int      default 0                 null comment '0表示报名信息生效，1表示报名信息失效(主要是为了区分多次报名信息)',
    score_subjective int                                null comment '主观题得分',
    create_date      datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date      datetime default CURRENT_TIMESTAMP null comment '更新时间',
    is_delete        tinyint  default 0                 not null comment '逻辑删除',
    constraint problem_exam_user_pk_2
        unique (id)
)
    comment '考试参加用户信息表';

create table problem_math408_bank
(
    problem_id      bigint auto_increment
        primary key,
    problem_name    varchar(256)      null comment '简称',
    difficulty_name varchar(10)       null comment '难度',
    source_name     varchar(256)      null comment '来源',
    description     text              null comment '题目描述',
    options         text              null comment '如果是选择题，则有多个选项（反之则为null）',
    correct_answer  text              null comment '正确答案（各个类型题目的答案格式不同）',
    analysis        text              null comment '解析',
    create_by_id    bigint            null comment '修改人id',
    create_by_name  varchar(256)      null comment '修改人name',
    create_time     datetime          null comment '修改时间',
    update_by_id    bigint            null comment '修改人id',
    update_by_name  varchar(256)      null comment '修改人name',
    update_time     datetime          null comment '修改时间',
    status          int               null comment '0表示该题目为数学类型题目，1表示该题目为408考研试题，2表示该题目为政治考研试题',
    option_type     int               null comment '0表示简答题，1表示单选题，2表示多选题，3表示填空题',
    is_delete       tinyint default 0 null comment '逻辑删除'
)
    comment 'math题目基本信息表' collate = utf8mb4_unicode_ci;

create table problem_math408_tags
(
    id         bigint auto_increment comment 'ID'
        primary key,
    tag_id     bigint        not null comment '标签ID',
    problem_id bigint        not null comment '问题ID',
    is_delete  int default 0 null
)
    comment 'math知识点存储表' collate = utf8mb4_unicode_ci;

create index problem_id
    on problem_math408_tags (problem_id);

create index tag_id
    on problem_math408_tags (tag_id);

create table problem_math408_tags_relation
(
    tag_id   bigint auto_increment comment '标签ID'
        primary key,
    tag_name varchar(256) not null comment '标签名'
)
    comment 'math知识点存储表' collate = utf8mb4_unicode_ci;

create table problem_similarity
(
    id                    bigint auto_increment comment 'ID'
        primary key,
    problem_id            bigint                             not null comment '原问题ID',
    problem_id_similarity bigint                             null comment '相似问题ID',
    `Rank`                int                                null comment '相似度排名',
    create_date           datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date           datetime default CURRENT_TIMESTAMP null comment '更新时间',
    is_delete             tinyint                            null comment '逻辑删除',
    constraint problem_similarity_pk_2
        unique (id)
)
    comment '相似问题关系表';

create table procter_info
(
    procter_id     int auto_increment comment '监控信息ID'
        primary key,
    img_url        varchar(1024)                      not null comment '图片地址',
    competition_id mediumtext                         not null comment '竞赛ID',
    description    varchar(1024)                      not null comment '可疑行为描述',
    type           tinyint                            not null comment '行为类型',
    uuid           mediumtext                         not null comment '用户ID',
    is_delete      tinyint  default 0                 not null comment '逻辑删除',
    create_date    datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_date    datetime default CURRENT_TIMESTAMP null comment '更新时间',
    constraint procter_info_pk_2
        unique (procter_id)
)
    comment '监控信息表';

create table submission_algorithm_records
(
    id            bigint auto_increment comment 'ID'
        primary key,
    submission_id bigint        not null comment '提交记录ID',
    create_time   date          not null comment '创建时间',
    is_delete     int default 0 null comment '逻辑删除',
    time_used     int           null,
    result        text          null,
    memory_used   int           null comment '空间花销'
);

create table usage_plans
(
    id           bigint auto_increment comment 'ID'
        primary key,
    feature_code varchar(255)                       not null comment '类型',
    max_count    int      default 0                 null comment '最大使用次数',
    is_delete    tinyint  default 0                 null comment '逻辑删除',
    create_date  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_date  datetime default CURRENT_TIMESTAMP null comment '更新时间',
    uuid         bigint                             not null comment '用户ID',
    constraint usage_plans_pk_2
        unique (id)
)
    comment '使用额度表';

create table user
(
    uuid        bigint auto_increment comment 'ID'
        primary key,
    account     varchar(256)                       not null comment '账号',
    password    varchar(256)                       null comment '密码',
    username    varchar(256)                       not null comment '用户名',
    avatar      text                               not null comment '头像',
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
    open_id     varchar(64)                        null comment '微信的open_id',
    create_time datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 null comment '是否删除',
    readings    int      default 0                 null,
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
    is_procter       tinyint default 0 not null comment '是否开启监控0关1开',
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
    time_penalty   int              null,
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
    idx            varchar(256)     null comment '題目对应索引',
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

create table competitions_user
(
    id             bigint auto_increment comment 'ID'
        primary key,
    uuid           bigint                               not null comment '用户ID',
    competition_id bigint                               not null comment '比赛ID',
    join_time      datetime   default CURRENT_TIMESTAMP not null comment '参加时间',
    is_participant tinyint(1) default 1                 not null comment '0参加,1不参加',
    score          bigint     default 0                 null comment '非ACM赛制分数',
    ac_num         bigint     default 0                 null comment '通过次数',
    time_penalty   int        default 0                 null comment '罚时',
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
    status      int      default 0                 null comment '0表示普通帖子，1表示答疑帖子，2表示题解帖子,3表示有下载内容，4表示博客帖子',
    url         varchar(1024)                      null,
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

create table submissions_algorithm
(
    submission_id  bigint auto_increment comment '提交记录ID'
        primary key,
    uuid           bigint                                                                                                                                                                                                                                                                        not null comment '用户id',
    problem_id     bigint                                                                                                                                                                                                                                                                        not null comment '题目id',
    source_code    text                                                                                                                                                                                                                                                                          not null comment '具体代码',
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

create table user_rating
(
    id               bigint auto_increment comment 'ID'
        primary key,
    uuid             bigint                             null comment '用户ID',
    rating_before    int                                not null comment '比赛前的分数',
    rating_after     int                                not null comment '比赛后的分数',
    competition_id   bigint                             not null comment '竞赛ID',
    competition_name varchar(255)                       null comment '竞赛名称',
    start_time       datetime default CURRENT_TIMESTAMP not null comment '竞赛开始时间',
    joins            int      default 0                 not null comment '参赛人数',
    user_rank        int                                not null comment '比赛排名',
    total_num        int      default 0                 not null comment '竞赛总题目数量',
    ac_num           int      default 0                 not null comment 'ac代码数量',
    create_time      datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time      datetime default CURRENT_TIMESTAMP not null comment '更新时间',
    is_delete        tinyint  default 0                 not null comment '逻辑删除',
    constraint user_rating_pk_2
        unique (id)
);

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

