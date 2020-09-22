CREATE TABLE People (
    id Integer PRIMARY KEY,
    name text NOT NULL UNIQUE
);

CREATE TABLE Pets (
    id Integer PRIMARY KEY,
    name text NOT NULL,
    owner int REFERENCES People(id)
);

CREATE TABLE Quests (
    id Integer PRIMARY KEY,
    name text NOT NULL,
    person Integer,    
    pet Integer,
    FOREIGN KEY (person) REFERENCES People(id),
    FOREIGN KEY (pet) REFERENCES Pets(id)
);

INSERT INTO People (id, name) VALUES 
(1, 'Minsc'), 
(2, 'Imoen'), 
(3, 'Aerie'), 
(4, 'Cernd'), 
(5, 'Jan');

INSERT INTO Pets (id, name, owner) VALUES 
(1, 'Boo', 1), 
(2, 'Aniket', 1), 
(3, 'Fluffy', 2), 
(4, 'Snowball', 3),
(5, 'Sharma', 1);

INSERT INTO Quests (id, name, person, pet) VALUES
(1,'Quest 1', 1, 1),
(2,'Quest 2', 1, 1),
(3,'Quest 3', 2, 1),
(4,'Quest 4', 4, 1),
(5,'Quest 5', 4, 1),
(6,'Quest 6', 1, 2);


SELECT * FROM People;
SELECT * FROM Pets;
SELECT * FROM Quests;




-- Multiple different 3 way join examples.

SELECT p.name, pet.name, q.name
FROM People p 
INNER JOIN Pets pet ON pet.owner = p.id
INNER JOIN Quests q ON q.pet = pet.id;


SELECT p.name, pet.name, q.name
FROM People p 
INNER JOIN Quests q ON p.id = q.person
INNER JOIN Pets pet ON pet.owner = q.pet;


SELECT p.name, pet.name, q.name
FROM Quests q
INNER JOIN People p ON p.id = q.person
INNER JOIN Pets pet ON pet.owner = q.pet;