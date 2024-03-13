CREATE TABLE worker (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO worker (first_name, last_name, salary) VALUES
('John', 'Doe', 50000),
('Jane', 'Smith', 60000),
('Michael', 'Johnson', 55000),
('Alice', 'Williams', 70000),
('David', 'Brown', 45000);
SELECT * 
FROM worker 
WHERE salary > (
    SELECT AVG(salary) 
    FROM worker
);
