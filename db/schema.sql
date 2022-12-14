DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    role_id INTEGER,
    INDEX role_id (role_id),
    CONSTRAINT foreignKeyRole FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    manager_id INTEGER,
    INDEX manager_id (manager_id),
    CONSTRAINT foreignKeyManager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40) NOT NULL, 
    salary DECIMAL NOT NULL,
    department_id INTEGER, 
    INDEX departmentID (department_id),
    CONSTRAINT foreignKeyDepartment FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);