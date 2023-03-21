# Write your MySQL query statement below

# Method - Using Left Join as the Problem Solution

SELECT name, SUM(t.amount) AS Balance 
FROM Users AS u
LEFT JOIN Transactions AS t
ON u.account = t.account 
GROUP BY u.account 
HAVING SUM(t.amount) > 10000 ;