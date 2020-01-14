DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department(
id INT auto_increment NOT NULL,
NAME VARCHAR(30),
PRIMARY KEY(id)
);
CREATE TABLE role(
id INT auto_increment NOT NULL,
department_id INT,
title varchar(30),
salary DECIMAL(30,5), 
PRIMARY KEY (id),
foreign key(department_id) references department(id)
);
CREATE table employee(
id INT auto_increment NOT NULL,
first_name VARCHAR(30) ,
last_name VARCHAR(30) , 
PRIMARY KEY (id),
role_id INT,
FOREIGN KEY (role_id) REFERENCES role(id),
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES employee(id)
);


INSERT INTO department(NAME),
VALUES ("DENTAL"),
INSERT INTO role(title,salary),
VALUES ("ASSISTANT", "20"),
INSERT INTO employee(first_name,last_name,role_id),
VALUES ("YISSEL","CONTRERAS",1);

INSERT INTO department(NAME),
VALUES ("MARKETING"),
INSERT INTO role(title,salary),
VALUE ("EVENT CORDINATOR","6500"),
INSERT INTO employee(first_name,last_name,role_id, manager_id),
VALUES ("Martha", "Isidoro", 1, 1);





SELECT FROM * department;
SELECT FROM * ROLE;
SELECT FROM * employee;