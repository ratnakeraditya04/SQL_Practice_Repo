# Write your MySQL query statement below



# Solution - 1 Using Left Join and additionally a condition on YEAR as 2019. 
SELECT u.user_id AS buyer_id, u.join_date, ifnull(COUNT(o.order_date), 0) AS orders_in_2019
FROM Users AS u 
LEFT JOIN Orders AS o
ON u.user_id = o.buyer_id 
AND YEAR(order_date) = '2019' 
GROUP BY u.user_id 
# ORDER BY o.buyer_id