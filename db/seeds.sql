INSERT INTO department (name)
VALUES
('Technology'), 
('Finance & Acc'),
('Sales & MKT,'),
('Operations');

INSERT INTO role (title, salary, department_id)
VALUES
('Full Stack Web Developer', 100000, 1),
('Software Engineer', 150000, 1),
('Accountant', 20000, 2), 
('MKT Coordindator', 80000, 2),
('Finanical Analyst', 75000, 3), 
('Sales', 80000, 3),
('Project Manager', 120000, 4),
('Operations Manager', 80000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('José', 'Peña', 1, null),
('Alma', 'Figueroa', 1, 1),
('Mike', 'Gonzalez', 2, null),
('Stephanie', 'Allen', 4, null),
('Marie', 'McCaffree', 3, 3),
('Tom', 'Brady', 6, null),
('Lewis', 'Hamilton', 5, 5),
('Nayeli', 'Diaz', 7, null),
('Abraham', 'Sanchez', 8, 7),
('Erick', 'Morales', 7, 7),
('Mario', 'Beltran', 4, 3),


