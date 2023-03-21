# Write your MySQL query statement be
# My Wrong Approach 

# SELECT name, SUM(distance) AS travelled_distance
# FROM Users AS u
# JOIN Rides AS r 
# USING (id)
# GROUP BY u.id,  
# ORDER BY r.distance DESC, u.name ASC; 


# Correct Approach - Left Join Approach 
# Do Learn - ifnull() function and what to do when during sorting one value becomes equal to another - how to sort in that case?

SELECT u.name, ifnull(SUM(distance) , 0) AS travelled_distance
FROM Users AS u
LEFT JOIN Rides AS r 
ON u.id = r.user_id 
GROUP BY r.user_id
ORDER BY travelled_distance DESC , u.name ASC ; 