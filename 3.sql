CREATE TABLE worker1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO worker1 (first_name, last_name, salary) VALUES
('Anna', 'Johnson', 55000),
('Emma', 'Smith', 60000),
('Olivia', 'Brown', 48000),
('Eva', 'Williams', 70000),
('Isabella', 'Davis', 52000);
SELECT *FROM worker1
WHERE salary BETWEEN (
        SELECT MIN(60000) FROM worker1
    ) AND (
        SELECT MAX(70000) FROM worker1
    );

