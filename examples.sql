-- SHOW ALL DATABASES
SELECT datname as name FROM pg_database;

-- CREATE NEW DATABAE
CREATE DATABASE my_app;

-- DROP DATABASE
DROP DATABASE my_app;

-- CREATE TABLE
CREATE TABLE users (
	id int,
	username varchar( 32 ),
	gender boolean
);

-- SELECT ALL DATA FROM TABLE
select * from users;

-- SELECT SPECIFIC COLUMNS FROM TABLE
select id, username from users;

-- INSERT SINGLE DATA (ROW) TO TABLE
INSERT INTO
	users ( age )
VALUES
	( 22 )
;

-- INSERT MULTIPLE DATA (ROWS) TO TABLE
INSERT INTO
	users ( id, username, gender )
VALUES
	( 1, 'najimov', true ),
	( 2, 'firdavs', true ),
	( 3, 'alisher', true ),
	( 4, 'javohir', true ),
	( 5, 'asror', true ),
	( 6, 'zarnigor', false ),
	( 7, 'dilfuzaxon', false ),
	( 8, 'muhammadrahim', true )
;