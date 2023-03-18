# Write your MySQL query statement below

# select Email from Person group by Email having count(Email) > 1 ; 


# Attempting This Question Again - 


SELECT email 
FROM Person 
GROUP BY email HAVING COUNT(email) > 1 ;