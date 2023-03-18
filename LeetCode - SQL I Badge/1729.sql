# Write your MySQL query statement below

# A simple Question on SQL Statements - Group By Command. 
SELECT user_id , COUNT(follower_id) AS followers_count 
FROM Followers
GROUP BY user_id
ORDER BY user_id ;