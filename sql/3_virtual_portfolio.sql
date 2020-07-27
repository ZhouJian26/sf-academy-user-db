use `sf_academy_exchange_db`;

drop table if exists `virtual_portfolio`;

create table `virtual_portfolio` (
    `id` int not null AUTO_INCREMENT primary key,
    `currency` char(3) not null check(`currency` <> ""),
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    `balance` decimal(15, 2) not null check(`balance` >= 0) default 0
)