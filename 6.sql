CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES menu(id)
);
INSERT INTO menu (name, parent_id) VALUES
('Home', NULL),
('About', NULL),
('Products', NULL),
('Services', NULL),
('Contact', NULL),
('Our Team', 2),
('History', 2),
('Management', 2),
('Product A', 4),
('Product B', 4),
('Service A', 5),
('Service B', 5);
SELECT 
    m1.name AS menu_name,
    COALESCE(m2.name, 'None') AS parent_menu_name
FROM 
    menu m1
LEFT JOIN 
    menu m2 ON m1.parent_id = m2.id;
