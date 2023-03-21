# Write your MySQL query statement below


#  Knowledge of Datediff was important of this question. 
# SELECT a.id 
# FROM Weather AS a, Weather AS b
# WHERE datediff(a.recordDate , b.recordDate) = 1 AND a.temperature > b.temperature ; 

# Using SubDate Function 
SELECT a.id 
FROM Weather AS a, Weather AS b 
WHERE subdate(a.recordDate , 1) = b.recordDate AND a.temperature > b.temperature ; 

