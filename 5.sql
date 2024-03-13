CREATE TABLE worker9 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
CREATE TABLE salary_history9 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary DECIMAL(10, 2),
    worker_id INT,
    paid_unpaid_status ENUM('paid', 'unpaid')
);
INSERT INTO worker9(first_name, last_name) VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Michael', 'Johnson'),
('Alice', 'Williams');
INSERT INTO salary_history9 (salary, worker_id, paid_unpaid_status) VALUES
(50000, 1, 'paid'),
(60000, 2, 'paid'),
(55000, 3, 'paid'),
(70000, 4, 'paid'),
(48000, 1, 'paid'),
(52000, 2, 'unpaid'),
(60000, 3, 'paid');
SELECT 
    w.first_name,
    w.last_name,
    SUM(sh.salary) AS total_paid_amount
FROM 
    worker w
JOIN 
    salary_history9 sh ON w.id = sh.worker_id
WHERE 
    sh.paid_unpaid_status = 'paid'
GROUP BY 
    w.id, w.first_name, w.last_name;
