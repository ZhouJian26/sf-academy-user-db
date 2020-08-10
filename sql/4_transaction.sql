
create table `sf_academy_exchange_db`.`transaction` (
    `id` int not null AUTO_INCREMENT primary key,
    `virtual_portfolio_src_id` int not null,
    `virtual_portfolio_dest_id` int not null,
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    `amount` decimal(15, 2) not null check(`amount` > 0),
    `rate` decimal(15, 3) not null check (`rate` >= 0),
    foreign key (`virtual_portfolio_src_id`) references `sf_academy_exchange_db`.`virtual_portfolio`(`id`) on update cascade on delete cascade,
    foreign key (`virtual_portfolio_dest_id`) references `sf_academy_exchange_db`.`virtual_portfolio`(`id`) on update cascade on delete cascade
);
