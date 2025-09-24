/*DROP TRIGGER IF EXISTS after_transaction_insert ON transactions;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(32) NOT NULL UNIQUE,
    balance FLOAT DEFAULT 100
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    sender_id INT REFERENCES users(id),
    receiver_id INT REFERENCES users(id),
    amount FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION update_balance()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE users
    SET balance = balance - NEW.amount
    WHERE id = NEW.sender_id;

    UPDATE users
    SET balance = balance + NEW.amount
    WHERE id = NEW.receiver_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


DROP TRIGGER IF EXISTS after_transaction_insert ON transactions;

CREATE TRIGGER after_transaction_insert
AFTER INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION update_balance();*/

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(32) NOT NULL UNIQUE,
    balance FLOAT DEFAULT 100
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    sender_id INT REFERENCES users(id),
    receiver_id INT REFERENCES users(id),
    amount FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS after_transaction_insert ON transactions;
DROP FUNCTION IF EXISTS update_balance();

CREATE OR REPLACE FUNCTION update_balance()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE users
    SET balance = balance - NEW.amount
    WHERE id = NEW.sender_id;

    UPDATE users
    SET balance = balance + NEW.amount
    WHERE id = NEW.receiver_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_transaction_insert
AFTER INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION update_balance();
