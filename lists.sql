CREATE TABLE lists (
    list_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    date_created TIMESTAMP NOT NULL,
    date_updated DATETIME NOT NULL,
    CONSTRAINT pk_list_id PRIMARY KEY (list_id)
);