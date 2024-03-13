-- Create Shipment table
CREATE TABLE Shipment (
    Shipment_ID INT PRIMARY KEY,
    Supplier_ID INT,
    Facilitator_ID INT,
    Warehouse_ID INT,
    Dispatch_Address VARCHAR(255),
    Delivery_Address VARCHAR(255),
    Dispatch_Date DATE
    -- FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    -- FOREIGN KEY (Facilitator_ID) REFERENCES Facilitator(Facilitator_ID),
    -- FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID)
);

-- Insert sample data into the Shipment table
INSERT INTO Shipment (Shipment_ID, Supplier_ID, Facilitator_ID, Warehouse_ID, Dispatch_Address, Delivery_Address, Dispatch_Date)
VALUES
    (1, 201, 301, 101, '123 Supplier St, CityA, StateA', '456 Warehouse St, CityA, StateA', '2023-01-20'),
    (2, 202, 302, 102, '456 Supplier St, CityB, StateB', '789 Warehouse St, CityB, StateB', '2023-02-15'),
    (3, 203, 303, 103, '789 Supplier St, CityC, StateC', '101 Warehouse St, CityC, StateC', '2023-03-10'),
    (4, 204, 304, 104, '101 Supplier St, CityD, StateD', '1234 Warehouse St, CityD, StateD', '2023-04-05');

SELECT * FROM Shipment;