create table tbl_member (
    userId      varchar2(50)    not null,
    userPass    varchar2(100)   not null,
    userName    varchar2(30)    not null,
    userPhon    varchar2(20)    not null,
    userAddr1   varchar2(20)    null,
    userAddr2   varchar2(50)    null,
    userAddr3   varchar2(50)    null,
    regiDate    date            default sysdate,
    verify      number          default 0,
    primary key(userId)
);

create table tbl_goods (
    gdsNum       number          not null,
    gdsName      varchar2(50)    not null,
    cateCode     varchar2(30)    not null,
    gdsPrice     number          not null,
    gdsStock     number          null,
    gdsDes       varchar(500)    null,
    gdsImg       varchar(200)    null,
    gdsDate      date            default sysdate,
    primary key(gdsNum)  
);

create table goods_category (
    cateName     varchar2(20)    not null,
    cateCode     varchar2(30)    not null,
    cateCodeRef  varchar2(30)    null,
    primary key(cateCode),
    foreign key(cateCodeRef) references goods_category(cateCode)
);

alter table tbl_goods add
    constraint fk_goods_category
    foreign key (cateCode)
        references goods_category(cateCode);
        
create sequence tbl_goods_seq;