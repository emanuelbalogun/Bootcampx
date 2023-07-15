SELECT distinct teachers.name teacher, cohorts.name cohort
FROM teachers 
JOIN assistance_requests 
ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
where cohorts.name ='JUL02'
ORDER BY teacher