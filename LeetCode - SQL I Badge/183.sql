# Write your MySQL query statement below

# Thing to Pay Attention here is - NOT IN Operator. 


SELECT name AS Customers FROM Customers WHERE id NOT IN (SELECT customerId FROM Orders) ; 