create table puppy_user(
    `id` int(11) not null auto_increment comment '主键id',
    name varchar (20) not null default '-' comment '用户姓名',
    nick varchar (100) not null default '-' comment '用户昵称',
    phone varchar (100) not null default '-' comment '手机号',
    parent_id int(11) not null default 0 comment '用户上级',
    type int (11) not null default 1 comment '用户类型，1、普通用户，2虚拟用户，3游客',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='用户表';

create table puppy_user_balance(
    `id` int(11) not null auto_increment comment '主键id',
    user_id int (11) unsigned not null comment '用户表主键id',
    balance int (11) unsigned not null default 0 comment '余额，单位分',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`),
    key user_id_index (user_id)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='用户余额表';


create table puppy_user_bank(
    `id` int(11) not null auto_increment comment '主键id',
    user_id int (11) unsigned not null comment '用户表主键id',
    name varchar (255) not null comment '用户名',
    account varchar (255) not null comment '银行账号',
    bank_name varchar (255) not null comment '银行名称',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`),
    key user_id_index (user_id)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='用户银行卡表';

create table puppy_withdrawal_history(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='取款记录表';

create table puppy_bill(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='账单表';


create table puppy_receipt_history(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='存款记录表';


create table puppy_order(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='订单表';


create table puppy_user_role(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='用户角色关联关系表';


create table puppy_role(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='角色表';


create table puppy_role_menu(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='角色菜单表';


create table puppy_menu(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='菜单表';


create table puppy_lottery(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='彩票种类表';


create table puppy_lottery_results(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='彩票开奖结果表';


create table puppy_hall(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='大厅表';


create table puppy_lottery_instruction(
    `id` int(11) not null auto_increment comment '主键id',
    `create_time` datetime not null comment '创建时间',
    `create_by` int(11)  not null comment '创建人',
    `update_time` datetime not null comment '更新时间',
    `update_by` int(11) not null comment '更新人',
    primary key (`id`)
)engine = innodb auto_increment=1 default charset= utf8mb4 comment='彩种说明表';


