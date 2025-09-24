DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id serial PRIMARY KEY,
	username varchar(32) UNIQUE
);

CREATE TABLE permissions (
	id serial PRIMARY KEY,
	u_id int REFERENCES users(id),
	rights int
);

-- Insert sample users
INSERT INTO users (username) VALUES
('sobitkhon'),
('michael'),
('dilshod'),
('zayn');

-- Insert sample permissions
INSERT INTO permissions (u_id, rights) VALUES
(1, 1),   -- sobitkhon → Normal user
(3, 2);   -- dilshod → Content manager

-- role 1 = Normal user
-- role 2 = Content manager
-- role 3 = Admin
-- role 4 = Root


