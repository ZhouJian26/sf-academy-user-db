use `sf_academy_exchange_db`;

drop table if exists `bank_account`;

create table `bank_account` (
    `user_id` int references `user`.`id` on update cascade on delete cascade,
    `iban` varchar(16) not null check(`iban` <> ""),
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    primary key (`user_id`, `iban`)
)