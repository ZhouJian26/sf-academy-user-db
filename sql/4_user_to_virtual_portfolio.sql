use `sf_academy_exchange_db`;

drop table if exists `user_to_virtual_portfolio`;

create table `user_to_virtual_portfolio` (
    `user_id` int references `user`.`id` on update cascade on delete cascade,
    `virtual_portfolio_id` int references `virtual_portfolio`.`id` on update cascade on delete cascade,
    primary key (`user_id`, `virtual_portfolio_id`)
)