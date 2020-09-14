CREATE TABLE IF NOT EXISTS Department (
    id serial PRIMARY KEY,    
    name text UNIQUE NOT NULL,
    slogan text
);

CREATE TABLE IF NOT EXISTS Employee (
    id integer PRIMARY KEY,
    name text,
    department integer references Department(id)
);


