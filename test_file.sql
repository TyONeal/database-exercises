CREATE DATABASE IF NOT EXISTS test_db;

USE test_db;

CREATE TABLE test_table(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(75) NOT NULL,
    body TEXT NOT NULL,
    PRIMARY KEY (id)
);

SHOW tables;
DESCRIBE test_table;

INSERT INTO test_table (author_name, body) VALUES ('Ty ONeal', 'this is the body'), ('Steve Pflug', 'K');

SELECT * FROM test_table;

SELECT body FROM test_table WHERE id = 2;




