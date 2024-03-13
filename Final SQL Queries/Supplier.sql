-- Insert sample data into the Supplier table
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Person, Phone_Number, Email)
VALUES
    (201, 'ABC Suppliers', 'John Supplier', '123-456-7890', 'john@example.com'),
    (202, 'XYZ Distributors', 'Jane Distributor', '987-654-3210', 'jane@example.com'),
    (203, 'LMN Imports', 'Mike Importer', '111-222-3333', 'mike@example.com'),
    (204, 'PQR Exports', 'Sara Exporter', '444-555-6666', 'sara@example.com');
    
    
SELECT * FROM Supplier;