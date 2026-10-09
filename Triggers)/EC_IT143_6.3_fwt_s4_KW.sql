CREATE TRIGGER trg_w3_schools_customers_last_mod ON dbo.t_w3_schools_customers
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME:    dbo.trg_w3_schools_customers_last_mod
PURPOSE: W3 Schools Customers - Last Modified Trigger

RUNTIME: 
1s

NOTES: 
Keep track of the last modified date for each row in the table

******************************************************************************************************************/

    UPDATE dbo.t_w3_schools_customers
       SET last_modified_date = GETDATE()
     WHERE CustomerID IN
     (
         SELECT DISTINCT CustomerID
           FROM Inserted
     );