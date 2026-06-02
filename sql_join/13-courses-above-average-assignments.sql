SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT course_id, COUNT(id) AS assignment_count
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY course_title;