SELECT cohorts.name cohorts_name, COUNT(students.id) student_count
FROM students JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_count