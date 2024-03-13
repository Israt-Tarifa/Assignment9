-- Create employees table
 CREATE TABLE employees4
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert sample data into employees table
INSERT INTO employees4 (name) VALUES
('John Doe'),
('Jane Smith'),
('Michael Johnson'),
('Alice'),
('Alice Johnson');

-- Create customers table
CREATE TABLE customers4 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert sample data into customers table
INSERT INTO customers4(name) VALUES
('Abu Rayhan'),
('Tarifa'),
('Ajij'),
('Hafsa'),
('Subreena');

-- Display the content of employees and customers tables
SELECT * FROM customers WHERE name LIKE '%son';
