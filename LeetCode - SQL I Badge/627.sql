# Write your MySQL query statement below
# UPDATE SALARY SET SEX = CASE WHEN SEX = 'f' THEN 'm' ELSE 'f' END ;



# Attempting this Question again with some prior knowledge - 
# Update Commands Come Under DML (Data Manipulation Language)

UPDATE Salary 
SET sex = CASE WHEN sex = 'm' THEN 'f' ELSE 'm' END; 

# In this question where I have written THEN Condition writing sex = 'f' will not work. Do remember this major difference. 