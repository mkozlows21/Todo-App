CREATE TABLE task (
    id int NOT NULL AUTO_INCREMENT,
    task varchar(255) NOT NULL,
    list_id int NOT NULL,
    complete ENUM("T","F"),
    date_added timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_completed timestamp DEFAULT NULL,
    CONSTRAINT pk_id PRIMARY KEY(id),
    CONSTRAINT fk_list_id FOREIGN KEY (list_id) REFERENCES list(list_id)
)