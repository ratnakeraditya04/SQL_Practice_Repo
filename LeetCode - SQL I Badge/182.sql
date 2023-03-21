# Write your MySQL query statement below

# select Email from Person group by Email having count(Email) > 1 ; 


# Attempting This Question Again - 


# SELECT email 
# FROM Person 
# GROUP BY email 
# HAVING COUNT(email) > 1 ;


# Attempting Again but now with a different approach - 

SELECT DISTINCT p1.email AS Email
FROM Person AS p1 
INNER JOIN Person AS p2 
ON p1.id <> p2.id 
WHERE p1.email = p2.email ;