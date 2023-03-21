# Write your MySQL query statement below


# Method - 1 - Using Inner Joining the Table. 
# SELECT MAX(e1.salary) AS SecondHighestSalary FROM Employee AS e1
# INNER JOIN Employee AS e2 
# WHERE e1.id = e2.id AND NOT(e1.salary = (SELECT MAX(salary) FROM Employee AS e1)) ; 


# Method - 2 - Standard Solution 
# Max() - Method Will Handle the NULL Condition as mentioned in the Question. 
SELECT MAX(salary) AS SecondHighestSalary 
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);
