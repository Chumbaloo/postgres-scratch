CREATE TABLE IF NOT EXISTS Department (
    id serial,    
    name text UNIQUE NOT NULL,
    slogan text,
    PRIMARY KEY (id, name)
);

CREATE TABLE IF NOT EXISTS Employee (
    id integer PRIMARY KEY,
    name text,
    department integer references Department(id)
);


