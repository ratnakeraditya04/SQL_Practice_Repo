# Write your MySQL query statement below



#  Only one approach I am writing. Do read o
# SELECT name 
# FROM SalesPerson 
# WHERE sales_id NOT IN
# (
#     SELECT sales_id 
#     FROM Orders 
#     WHERE com_id IN
#     (
#         SELECT com_id
#         FROM Company AS c
#         WHERE name = 'RED'  
#     )
# )
#  Approach - 2 - Using Inner Join Method 

# SELECT name 
# FROM SalesPerson 
# WHERE sales_id NOT IN
# (
#     SELECT o.sales_id
#     FROM Orders AS o
#     INNER JOIN Company AS c
#     ON o.com_id = c.com_id and c.name = 'RED'
# )