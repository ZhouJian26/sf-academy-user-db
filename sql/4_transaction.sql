use `sf_academy_exchange_db`;

drop table if exists `transaction`;

create table `transaction` (
    `id` int not null AUTO_INCREMENT primary key,
    `virtual_portfolio_src_id` int references `virtual_portfolio`.`id` on update cascade on delete cascade,
    `virtual_portfolio_dest_id` int references `virtual_portfolio`.`id` on update cascade on delete cascade,
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP,
    `amount` decimal(15, 2) not null check(`amount` >= 0),
    `rate` decimal(15, 3) not null check (`rate` >= 0)
)