SELECT assignments.id, name , day, chapter, count(assistance_requests.*) total_requests
FROM assignments
JOIN assistance_requests 
On assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests Desc