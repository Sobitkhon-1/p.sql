-- SHOW ALL DATABASES
SELECT datname as name FROM pg_database;

-- CREATE NEW DATABASE
CREATE DATABASE my_app;

-- DROP DATABASE
-- DROP DATABASE my_app;

-- CREATE TABLE students
CREATE TABLE students (
    id int,
    name varchar(32),
    class int,
    age int,
    c_type varchar(1),
    gender varchar(1)  -- added here
);

-- INSERT INTO students
INSERT INTO students (id, name, class, age, c_type, gender) VALUES
(1, 'andrew', 5, 25, 'A', 'm');

-- CREATE TABLE users
CREATE TABLE users (
    id int,
    username varchar(32),
    gender boolean,
    age int
);

-- SELECT ALL DATA FROM TABLE
SELECT * FROM users;

-- SELECT SPECIFIC COLUMNS FROM TABLE
SELECT id, username FROM users;

-- INSERT SINGLE DATA (ROW) TO TABLE
INSERT INTO users (age) VALUES (22);

-- INSERT MULTIPLE DATA (ROWS) TO TABLE
INSERT INTO users (id, username, gender) VALUES
    (1, 'najimov', true),
    (2, 'firdavs', true),
    (3, 'alisher', true),
    (4, 'javohir', true),
    (5, 'asror', true),
    (6, 'zarnigor', false),
    (7, 'dilfuzaxon', false),
    (8, 'muhammadrahim', true);
