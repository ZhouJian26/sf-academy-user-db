use `sf_academy_exchange_db`;

drop table if exists `user`;

create table `user` (
    `id` int not null AUTO_INCREMENT primary key,
    `email` varchar(256) not null unique check(`email` <> ""),
    `password` varchar(64) not null check(`password` <> ""),
    `username` varchar(64) not null check(`username` <> ""),
    `date` datetime not null DEFAULT CURRENT_TIMESTAMP
)