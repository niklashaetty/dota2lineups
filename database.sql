
drop table if exists lineups;
drop table if exists match_ids;

create table lineups(
    lineup_key varchar(20) not null unique,
    wins integer not null default 0,
    losses integer not null default 0,
    win_rate real not null,
    weighted_sort real not null,
    primary key(lineup_key)
);

create table match_ids(
    lineup_key varchar(20) not null,
    match_id integer not null,
    win boolean not null,
    primary key(lineup_key, match_id),
    foreign key(lineup_key) references lineups(lineup_key)
);
