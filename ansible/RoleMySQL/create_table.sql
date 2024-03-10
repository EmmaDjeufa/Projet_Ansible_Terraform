CREATE DATABASE IF NOT EXISTS cytech;
USE cytech;

DROP TABLE IF EXISTS cytech;

CREATE TABLE cytech (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO cytech (name) VALUES ('Emmanuella Djeufa');
