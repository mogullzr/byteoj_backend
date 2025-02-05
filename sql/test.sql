create table if not exists shopdb.banner
(
    banner_id int auto_increment
    primary key,
    imgurl    varchar(510) null
    )
    charset = utf8mb3;

create table if not exists shopdb.cart
(
    cart_id     int auto_increment
    primary key,
    user_id     int                                 null,
    goods_id    int                                 null,
    quantity    int                                 null,
    create_time timestamp default CURRENT_TIMESTAMP null
)
    charset = utf8mb3;

create index goods_id
    on shopdb.cart (goods_id);

create index user_id
    on shopdb.cart (user_id);

create table if not exists shopdb.goods
(
    goods_id       int auto_increment
    primary key,
    goods_name     varchar(255)   null,
    price          decimal(10, 2) null,
    category       varchar(255)   null,
    brand          varchar(255)   null,
    specifications varchar(255)   null,
    description    varchar(255)   null,
    image          varchar(255)   null,
    stock          int            null,
    sales          int            null,
    create_time    datetime       null,
    update_time    datetime       null
    )
    charset = utf8mb3;

create table if not exists shopdb.order_item
(
    item_id     int auto_increment
    primary key,
    order_id    int                                 null,
    goods_id    int                                 null,
    quantity    int                                 null,
    price       double(10, 0)                       null,
    create_time timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP
    )
    charset = utf8mb3;

create index goods_id
    on shopdb.order_item (goods_id);

create index order_id
    on shopdb.order_item (order_id);

create table if not exists shopdb.orders
(
    order_id       int auto_increment
    primary key,
    user_id        int                                 null,
    total_price    decimal(10, 2)                      null,
    creat_time     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    payment_status varchar(255)                        null
    )
    charset = utf8mb3;

create index user_id
    on shopdb.orders (user_id);

create table if not exists shopdb.user
(
    uuid        bigint auto_increment comment 'ID'
    primary key,
    account     varchar(256)                       not null comment '账号',
    password    varchar(256)                       null comment '密码',
    avatar      text                               null comment '头像',
    phone       varchar(256)                       null comment '电话',
    create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete   tinyint  default 0                 not null comment '是否删除',
    constraint user_pk
    unique (account)
    )
    comment '用户表' collate = utf8mb4_unicode_ci;

