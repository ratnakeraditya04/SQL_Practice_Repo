# Write your MySQL query statement below

# Method - This Method is Partially Correct as it does not incorporate ONLY mentioned in the Que.
# SELECT p.product_id, p.product_name 
# FROM Product AS p 
# LEFT JOIN Sales as s
# ON p.product_id = s.product_id
# WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31' ;  


# Correct Method - Using Join 

# SELECT  p.product_id, p.product_name 
# FROM Product AS p 
# JOIN Sales as s
# USING (product_id)
# GROUP BY (p.product_id)
# HAVING MAX(sale_date) <= '2019-03-31' AND min(sale_date) >= '2019-01-01' ;

# Another Method - Using Left Join

# SELECT  p.product_id, p.product_name 
# FROM Product AS p 
# LEFT JOIN Sales as s
# ON p.product_id = s.product_id 
# GROUP BY p.product_id
# HAVING MAX(sale_date) <= '2019-03-31' AND min(sale_date) >= '2019-01-01' ;

# Another Method - Using Sub - Query Genaration 

SELECT product_id , product_name 
FROM Product 
WHERE product_id IN 
(
  SELECT product_id 
  FROM Sales 
  GROUP BY product_id
  HAVING MAX(sale_date) <= '2019-03-31' AND MIN(sale_date) >= '2019-01-01' 
)


