CREATE TABLE Warehouse (
    Warehouse_ID INT PRIMARY KEY,
    Warehouse_Name VARCHAR(255),
    Street_Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100)
);

-- Insert sample data into the Warehouse table
INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Street_Address, City, State, Country)
VALUES
    (101, 'Main Warehouse', '123 Main St', 'CityA', 'StateA', 'CountryA'),
    (102, 'Secondary Warehouse', '456 Second St', 'CityB', 'StateB', 'CountryB'),
    (103, 'Regional Warehouse', '789 Third St', 'CityC', 'StateC', 'CountryC'),
    (104, 'Distribution Center', '101 DC St', 'CityD', 'StateD', 'CountryD');

SELECT * FROM Warehouse