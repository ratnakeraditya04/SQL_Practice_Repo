# Write your MySQL query statement below

# Do mark this Question as Important Question as It needs some more knowledge to complete. 


SELECT sell_date , COUNT(DISTINCT product) AS num_sold, 
GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products 
FROM Activities 
GROUP BY sell_date 
ORDER BY sell_date ; 