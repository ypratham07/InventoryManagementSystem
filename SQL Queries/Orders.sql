-- Create Order table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Warehouse_ID INT,
    Supplier_ID INT,
    Order_Date DATE
);

-- Insert sample data into the Order table
INSERT INTO Orders (Order_ID, Warehouse_ID, Supplier_ID, Order_Date)
VALUES
    (1, 101, 201, '2023-01-15'),
    (2, 102, 202, '2023-02-20'),
    (3, 103, 203, '2023-03-25'),
    (4, 104, 204, '2023-04-10');