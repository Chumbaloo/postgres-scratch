CREATE TABLE People (
    id INT PRIMARY KEY,
    name text NOT NULL UNIQUE
);

CREATE TABLE Pets (
    id INT PRIMARY KEY,
    name text NOT NULL,
    owner int references People(id)
);



INSERT INTO People values (1, 'Minsc');
INSERT INTO Pets values (1, 'Boo');
INSERT INTO Pets values (2, 'Boo');

SELECT * FROM Pets;
Select * FROM People;

ALTER TABLE Pets ADD CONSTRAINT constraint_name UNIQUE (name);

