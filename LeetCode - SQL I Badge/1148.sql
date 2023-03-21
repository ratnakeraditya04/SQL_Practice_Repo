# Write your MySQL query statement below

# Approach Using Inner Join Method. 

# SELECT DISTINCT a1.author_id AS id FROM Views AS a1
# INNER JOIN Views AS a2 
# ON a1.author_id = a2.author_id 
# WHERE a1.author_id = a1.viewer_id 
# ORDER BY a1.author_id ;


# Another Approach

SELECT DISTINCT author_id AS id 
FROM Views
WHERE author_id = viewer_id 
ORDER BY author_id ;