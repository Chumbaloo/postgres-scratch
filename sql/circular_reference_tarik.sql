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


WITH team_captain AS (
  INSERT INTO Players (player_name,team)
  VALUES ('John','Some team')
)
INSERT INTO Teams (team_name, captain)
VALUES ('Some team', 'John');


SELECT * FROM Teams;
SELECT * FROM Players;