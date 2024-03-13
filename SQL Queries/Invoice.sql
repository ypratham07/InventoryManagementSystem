-- Create Invoice table
CREATE TABLE Invoice (
    Invoice_ID INT PRIMARY KEY,
    Warehouse_ID INT,
    Supplier_ID INT,
    Amount DECIMAL(10, 2) 
    -- FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID),
    -- FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

-- Insert sample data into the Invoice table
INSERT INTO Invoice (Invoice_ID, Warehouse_ID, Supplier_ID, Amount)
VALUES
    (1, 101, 201, 5000.00),
    (2, 102, 202, 7500.50),
    (3, 103, 203, 12000.25),
    (4, 104, 204, 9000.75);
