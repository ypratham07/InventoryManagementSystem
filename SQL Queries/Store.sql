-- Create Store table
CREATE TABLE Store (
    Store_ID INT PRIMARY KEY,
    Store_Name VARCHAR(255),
    Street_Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100)
);

-- Insert sample data into the Store table
INSERT INTO Store (Store_ID, Store_Name, Street_Address, City, State, Country)
VALUES
    (1, 'Main Store', '123 Main St', 'CityA', 'StateA', 'CountryA'),
    (2, 'Branch Store 1', '456 Branch St', 'CityB', 'StateB', 'CountryB'),
    (3, 'Branch Store 2', '789 Branch St', 'CityC', 'StateC', 'CountryC');

Select * from Store;