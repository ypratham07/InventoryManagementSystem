-- Insert sample data into the Order table
INSERT INTO inventory_management_system.ORDER (Order_ID, Warehouse_Warehouse_ID, Supplier_Supplier_ID, Order_Date)
VALUES
    (1, 101, 201, '2023-01-15'),
    (2, 102, 202, '2023-02-20'),
    (3, 103, 203, '2023-03-25'),
    (4, 104, 204, '2023-04-10');

SELECT * FROM inventory_management_system.ORDER;
