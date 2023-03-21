# Write your MySQL query statement below

# Solved Using Left Join
# SELECT v1.customer_id,  COUNT(v1.customer_id) AS count_no_trans FROM Visits AS v1 
# LEFT JOIN Transactions AS t1 ON v1.visit_id = t1.visit_id 
# WHERE t1.transaction_id IS NULL 
# GROUP BY v1.customer_id ;


# Trying to Solve Using Sub Query - Not Advantageous Method 

SELECT customer_id , COUNT(visit_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
    SELECT visit_id FROM Transactions
)
GROUP BY customer_id ;

