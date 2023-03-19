# Write your MySQL query statement below



# My Attempt before learning the concept of Partitioning

# SELECT player_id , event_date AS first_login 
# FROM Activity 
# GROUP BY player_id , event_date 
# ORDER BY event_date ; 


# Another Attempt

SELECT player_id , MIN(event_date) AS first_login  
FROM Activity 
GROUP BY player_id ;