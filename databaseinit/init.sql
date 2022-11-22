use backend;

CREATE TABLE item(name varchar(30) not null, bcit_id varchar(30) primary key);

INSERT INTO item (name, bcit_id) VALUES ("Initial_Data", "A00000000");