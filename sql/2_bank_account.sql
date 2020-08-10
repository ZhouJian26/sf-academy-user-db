
create table `sf_academy_exchange_db`.`bank_account` (
    `user_id` int not null,
    `iban` varchar(16) not null check(`iban` <> ""),
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    foreign key (`user_id`) references `sf_academy_exchange_db`.`user`(`id`) on update cascade on delete cascade,
    primary key (`user_id`, `iban`)
);
