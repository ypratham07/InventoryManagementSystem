-- Create Shipment_Facilitator table
CREATE TABLE Shipment_Facilitator (
    Facilitator_ID INT PRIMARY KEY,
    Facilitator_Name VARCHAR(255),
    Facilitator_Contact VARCHAR(20),
    Cost DECIMAL(10, 2)
);

-- Insert sample data into the Shipment_Facilitator table
INSERT INTO Shipment_Facilitator (Facilitator_ID, Facilitator_Name, Facilitator_Contact, Cost)
VALUES
    (301, 'Express Logistics', '123-456-7890', 1.50),
    (302, 'Swift Shippers', '987-654-3210', 1.75),
    (303, 'Global Transporters', '111-222-3333', 2.00),
    (304, 'Speedy Movers', '444-555-6666', 2.25);

Select * FROM Shipment_Facilitator;