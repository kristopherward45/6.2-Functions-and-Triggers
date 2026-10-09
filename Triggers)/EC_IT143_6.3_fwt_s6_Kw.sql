DELETE FROM dbo.t_w3_schools_customers
WHERE CustomerName IN('Test Customer 1', 'Test Customer 2', 'Test Customer 3');

-- Load test rows
INSERT INTO dbo.t_w3_schools_customers(CustomerID, CustomerName, ContactName, Address, City, Country)
VALUES(998, 'Test Customer 1', 'John Doe', '123 Main St', 'Seattle', '98101'),
      (999, 'Test Customer 2', 'Jane Doe', '456 Elm St', 'Seattle', '98101');

-- See if the trigger worked
SELECT t.*
  FROM dbo.t_w3_schools_customers AS t;

-- Try it again
UPDATE dbo.t_w3_schools_customers SET CustomerName = 'Test Customer 3'
WHERE CustomerID = 999;

-- See if the trigger worked
SELECT t.*
  FROM dbo.t_w3_schools_customers AS t;


-- Q4: How to keep track of who last modified a record?
-- A4: This works for server user and the initial INSERT...

ALTER TABLE dbo.t_w3_schools_customers
ADD last_modified_by VARCHAR(50) DEFAULT SUSER_NAME();