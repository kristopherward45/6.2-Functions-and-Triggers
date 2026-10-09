-- Q: How to extract the first name from the contact name?

-- A: To extract the first name, locate the position of the first space in ContactName 
--    and take all characters to the left of that space using LEFT() and CHARINDEX().
--    If no space exists, return the entire ContactName string.

SELECT t.ContactName
  FROM dbo.t_w3_schools_customers AS t
 ORDER BY 1;