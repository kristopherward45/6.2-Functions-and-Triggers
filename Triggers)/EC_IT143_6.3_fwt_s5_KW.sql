-- Q2: How to keep track of when a record was last modified?
-- A2: Maybe use an after update trigger


-- Q3: Did it work?
-- A3: Well, lets see...yup


-- Remove stuff if it is already there
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