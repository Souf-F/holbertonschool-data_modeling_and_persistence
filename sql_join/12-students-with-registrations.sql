SELECT DISTINCT students.name AS student_name
FROM students
INNER JOIN registrations ON students.id = registrations.student_id
ORDER BY student_name;