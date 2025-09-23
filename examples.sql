-- SHOW ALL DATABASES
SELECT datname AS name FROM pg_database;

-- CREATE NEW DATABASE
CREATE DATABASE my_app;

-- DROP DATABASE
DROP DATABASE my_app;

-- CREATE TABLE
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(32) NOT NULL,
    gender BOOLEAN NOT NULL
);

-- SELECT ALL DATA FROM TABLE
SELECT * FROM users;

-- SELECT SPECIFIC COLUMNS FROM TABLE
SELECT id, username FROM users;

-- INSERT SINGLE DATA (ROW) TO TABLE
INSERT INTO users (username, gender)
VALUES ('sobit', true);

-- INSERT MULTIPLE DATA (ROWS) TO TABLE
INSERT INTO users (username, gender)
VALUES
    ('najimov', true),
    ('firdavs', true),
    ('alisher', true),
    ('javohir', true),
    ('asror', true),
    ('zarnigor', false),
    ('dilfuzaxon', false),
    ('muhammadrahim', true);
