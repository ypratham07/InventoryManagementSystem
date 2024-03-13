-- Insert sample data into the Transacts table
INSERT INTO Transacts (Store_Store_ID, Warehouse_Warehouse_ID, Item_ID, Item_Quantity, Transaction_Date)
VALUES
    (1, 101, 1, 50, '2023-01-20'),
    (2, 102, 2, 25, '2023-02-15'),
    (1, 101, 3, 30, '2023-03-10'),
    (3, 103, 4, 15, '2023-04-05');

SELECT * FROM TRANSACTS;