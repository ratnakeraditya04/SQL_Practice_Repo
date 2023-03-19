# Write your MySQL query statement below
# SELECT event_day as day , emp_id ,SUM(out_time - in_time) as total_time FROM Employees GROUP BY  event_day , emp_id ORDER BY emp_id ;


# Attempting Again This Problem Again

/* Write an SQL query to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day, an employee can enter and leave more than once. The time spent in the office for a single entry is out_time - in_time. */

/* Return the result table in any order. */


/* Pay Attention on this statement - 'by each employee on each day at the office.' */
/* This statement offers hint at the entities to be used as calculation of entities for GROUP BY. */

SELECT emp_id , event_day AS day, SUM(out_time - in_time) AS total_time 
FROM Employees
GROUP BY event_day, emp_id 
ORDER BY emp_id ;