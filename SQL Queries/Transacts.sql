-- Create Transacts table
CREATE TABLE Transacts (
    Store_ID INT,
    Warehouse_ID INT,
    Item_ID INT,
    Quantity INT,
    Transaction_Date DATE
    -- PRIMARY KEY (Store_ID, Warehouse_ID, Item_ID, Transaction_Date),
    -- FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID),
    -- FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)
);

-- Insert sample data into the Transacts table
INSERT INTO Transacts (Store_ID, Warehouse_ID, Item_ID, Quantity, Transaction_Date)
VALUES
    (1, 101, 1, 50, '2023-01-20'),
    (2, 102, 2, 25, '2023-02-15'),
    (1, 101, 3, 30, '2023-03-10'),
    (3, 103, 4, 15, '2023-04-05');

Select * from Transacts;