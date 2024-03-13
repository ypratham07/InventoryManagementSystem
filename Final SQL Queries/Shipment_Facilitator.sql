-- Insert sample data into the Shipment_Facilitator table
INSERT INTO Shipment_Facilitator (Facilitator_ID, Facilitator_Name, Facilitator_Contact, Facilitator_Cost_Per_KG)
VALUES
    (301, 'Express Logistics', '123-456-7890', 1.50),
    (302, 'Swift Shippers', '987-654-3210', 1.75),
    (303, 'Global Transporters', '111-222-3333', 2.00),
    (304, 'Speedy Movers', '444-555-6666', 2.25);

Select * FROM Shipment_Facilitator;