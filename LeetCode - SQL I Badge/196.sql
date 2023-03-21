# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below


# delete p1 from Person as p1
# inner join Person as p2
# on p1.email = p2.email and p1.id > p2.id 


# A Classic and Very Important Question on Inner Join Questions. 


DELETE p1 FROM Person AS p1 
INNER JOIN Person AS p2
WHERE p1.email = p2.email AND p1.id > p2.id ;