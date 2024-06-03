\c postgres

CREATE TABLE IF NOT EXISTS Accounts (
  account_id SERIAL PRIMARY KEY
);

INSERT INTO Accounts (account_id) VALUES
(1), (2), (3), (4), (5);

CREATE TABLE IF NOT EXISTS Products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(100),
  account_id BIGINT, -- 外部キーと型が一致しなくない？
  FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
);

INSERT INTO Products (product_name, account_id) VALUES
('land of the lustrous', 1),
('Sound! Euphonium', 5);