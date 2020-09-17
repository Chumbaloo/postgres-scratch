CREATE DOMAIN RGBValue as
    integer check (value between 0 and 255);
        
CREATE TABLE Teams
(
    team_name   text,
    captain     text not null,
	Primary Key (team_name)
);

CREATE TABLE Players(
    player_name text,
    team        text not null,
    FOREIGN KEY (team) references Teams(team_name),
    PRIMARY KEY (player_name)
);

ALTER TABLE Teams
ADD FOREIGN KEY (captain) references Players(player_name);

CREATE TABLE Fans(
    fan_name    text,
    PRIMARY KEY(fan_name)
);

CREATE TABLE Colours(
    colour_id      serial,
    R_value        RGBValue not null,
    G_value        RGBValue not null,
    B_value        RGBValue not null,
    PRIMARY KEY (colour_id) 
);

CREATE TABLE Team_Colours(
    team    text,
    colour  integer,
    FOREIGN KEY (team) references Teams(team_name),
    FOREIGN KEY (colour) references Colours(colour_id),
    PRIMARY KEY (team, colour)
);

CREATE TABLE Fan_Fav_Colours(
    fan     text references Fans(fan_name),
    colour  integer references Colours(colour_id),
    PRIMARY KEY (fan, colour)
);

CREATE TABLE Fan_Fav_Players(
    fan     text references Fans(fan_name),
    player  text references Players(player_name),
    PRIMARY KEY (fan, player)
);