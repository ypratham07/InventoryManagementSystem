-- Create Employee table
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Warehouse_ID INT,
    Designation VARCHAR(50),
    Manager_ID INT
);


INSERT INTO Employee (Employee_ID, Employee_Name, Warehouse_ID, Designation, Manager_ID)
VALUES
    (1, 'John Doe', 101, 'Manager', NULL),
    (2, 'Jane Smith', 101, 'Supervisor', 1),
    (3, 'Bob Johnson', 102, 'Clerk', 2),
    (4, 'Alice White', 102, 'Clerk', 2),
    (5, 'Tom Brown', 103, 'Supervisor', 1),
    (6, 'Sarah Green', 103, 'Clerk', 5),
    (7, 'Mark Davis', 104, 'Manager', NULL),
    (8, 'Emily Wilson', 104, 'Supervisor', 7),
    (9, 'Chris Lee', 104, 'Clerk', 8);
    
    SELECT * FROM Employee