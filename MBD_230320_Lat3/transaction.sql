-- buat tabel
DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    balance DEC(15,2) NOT NULL,
    PRIMARY KEY(id)
);

-- tambah Bob
INSERT INTO accounts(name,balance)
VALUES('Bob',10000);

-- transaction Alice
BEGIN;

INSERT INTO accounts(name,balance)
VALUES('Alice',10000);

-- commit Alice
BEGIN;

INSERT INTO accounts(name,balance)
VALUES('Alice',10000);

COMMIT;

-- commit transaction
BEGIN;

UPDATE accounts 
SET balance = balance - 1000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE id = 2;

COMMIT;

-- tambah Jack
INSERT INTO accounts(name, balance)
VALUES('Jack',0);

-- rollback transaction
BEGIN;

UPDATE accounts 
SET balance = balance - 1500
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1500
WHERE id = 3; 

ROLLBACK;

-- transaction 1
BEGIN;

UPDATE accounts 
SET balance = 10000
WHERE id = 4;

COMMIT;

-- transaction 2
BEGIN;

UPDATE accounts 
SET balance = balance - 200
WHERE id = 4;

UPDATE accounts
SET balance = balance + 2000
WHERE id = 3; 

ROLLBACK;

-- transaction 3
BEGIN;

UPDATE accounts 
SET balance = balance - 2000
WHERE id = 4;

UPDATE accounts
SET balance = balance + 2000
WHERE id = 3; 

COMMIT;

-- transaction 4
BEGIN;

INSERT INTO accounts(name,balance)
VALUES('Jack & Alice',(4000+5000));

UPDATE accounts
SET balance = balance - 4000
WHERE id = 4;

UPDATE accounts
SET balance = balance - 5000
WHERE id = 3;

COMMIT;