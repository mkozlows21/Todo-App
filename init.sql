CREATE DATABASE todo_app;

USE todo_app;

CREATE TABLE list (
    list_id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    date_created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_list_id PRIMARY KEY (list_id)
);

CREATE TABLE task (
    id int NOT NULL AUTO_INCREMENT,
    task varchar(255) NOT NULL,
    list_id int NOT NULL,
    complete ENUM("T","F") DEFAULT "F",
    date_added timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_completed timestamp DEFAULT NULL,
    CONSTRAINT pk_id PRIMARY KEY(id),
    CONSTRAINT fk_list_id FOREIGN KEY (list_id) REFERENCES list(list_id)
);

INSERT INTO list (name) VALUES ("List 1");
INSERT INTO task (task, list_id) VALUES ("Complete Task.", 1);
INSERT INTO task (task, list_id) VALUES ("Start another task.", 1);
INSERT INTO task (task, list_id, complete) VALUES ("Finish Task.", 1, "T");
