-- Create Items table
CREATE TABLE Items (
    Item_ID INT PRIMARY KEY,
    Order_ID INT,
    Item_Name VARCHAR(255),
    Item_Description VARCHAR(255),
    Item_Quantity INT,
    Cost_Price DECIMAL(10, 2)
    -- FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
);

-- Insert sample data into the Items table
INSERT INTO Items (Item_ID, Order_ID, Item_Name, Item_Description, Item_Quantity, Cost_Price)
VALUES
    (1, 1, 'Widget A', 'A high-quality widget', 100, 10.99),
    (2, 1, 'Gadget B', 'An efficient gadget', 50, 25.50),
    (3, 2, 'Tool C', 'A versatile tool', 75, 8.75),
    (4, 3, 'Device D', 'A smart device', 30, 49.99);

SELECT * FROM Items;