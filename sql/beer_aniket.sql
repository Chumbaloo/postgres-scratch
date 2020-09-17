--
--  The following script creates the Beer v2 database tables
--

create table Brewers (
    id      integer, -- PG: serial
    name    text not null unique,
    country text not null,
    primary key (id)
);

create table Beers (
    id      integer, -- PG: serial
    name    text,
    brewer  integer,
    primary key (id),
    foreign key (brewer) references Brewers(id)
);

create table Bars (
    id      integer, -- PG: serial
    name    text,
    addr    text,
    license integer,
    primary key (id)
);

create table Drinkers (
    id      integer, -- PG: serial
    name    text,
    addr    text,
    phone   text,
    primary key (id)
);

create table Sells (
    bar     integer,
    beer    integer,
    price   float,
    primary key (bar,beer),
    foreign key (bar) references Bars(id),
    foreign key (beer) references Beers(id)
);

create table Likes (
    drinker    integer,
    beer    integer,
    primary key (drinker,beer),
    foreign key (drinker) references Drinkers(id),
    foreign key (beer) references Beers(id)
);

create table Frequents (
    drinker integer,
    bar     integer,
    primary key (drinker,bar),
    foreign key (drinker) references Drinkers(id),
    foreign key (bar) references Bars(id)
);

