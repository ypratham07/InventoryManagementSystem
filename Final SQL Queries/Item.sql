-- Insert sample data into the Items table
INSERT INTO Item (Item_ID, Order_Order_ID, Item_Name, Item_Description, Item_Quantity, Item_Cost_Price,Order_Supplier_Supplier_ID)
VALUES
    (1, 1, 'Widget A', 'A high-quality widget', 100, 10.99,201),
    (2, 1, 'Gadget B', 'An efficient gadget', 50, 25.50,201),
    (3, 2, 'Tool C', 'A versatile tool', 75, 8.75,202),
    (4, 3, 'Device D', 'A smart device', 30, 49.99,203);

SELECT * FROM Item;

