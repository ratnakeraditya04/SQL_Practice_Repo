# Write your MySQL query statement below


# SELECT e.employee_id 
# FROM Employees AS e 
# INNER JOIN Salaries AS s
# WHERE e.name IS NULL OR s.salary IS NULL
# ORDER BY e.employee_id ;    


# Wrong Approach
# SELECT employee_id 
# FROM Employees 
# WHERE employee_id = (SELECT employee_id FROM Salaries) ;



# Full Join Approach 

# SELECT e.employee_id 
# FROM Employees AS e 
# CROSS JOIN Salaries AS s
# WHERE e.name IS NULL OR s.salary IS NULL ;



# Finally, the solution after seeing the solution. 


SELECT T.employee_id 
FROM 
(
    SELECT * FROM Employees LEFT JOIN Salaries USING(employee_id)
    UNION 
    SELECT * FROM Employees RIGHT JOIN Salaries USING(employee_id)
) AS T
WHERE T.name IS NULL OR T.salary IS NULL 
ORDER BY T.employee_id; 

