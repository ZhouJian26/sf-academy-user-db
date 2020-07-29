use `sf_academy_exchange_db`;

drop table if exists `virtual_portfolio`;

create table `virtual_portfolio` (
    `id` int not null AUTO_INCREMENT primary key,
    `user_id` int not null,
    `currency` char(3) not null check(`currency` <> ""),
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    `balance` decimal(15, 2) not null default 0 check(`balance` >= 0),
    foreign key (`user_id`) references `user`(`id`) on update cascade on delete cascade,
    constraint user_unique_portfolio unique (`user_id`, `currency`)
)