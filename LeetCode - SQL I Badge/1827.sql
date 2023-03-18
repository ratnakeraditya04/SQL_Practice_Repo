# Write your MySQL query statement below


# SELECT employee_id , 
# CASE WHEN employee_id % 2 = 1 and name not LIKE 'M%' THEN salary else 0 END AS bonus 
# FROM Employees ORDER BY employee_id ;


# Attempt this again - 
# From this Question I learnt how to apply - CASE Statemnets in SQL. 

SELECT employee_id, 
CASE 
    WHEN employee_id % 2 = 1 AND name NOT LIKE 'M%' THEN salary
    ELSE 0 
END AS bonus 
FROM Employees
ORDER BY employee_id;