SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(*) > (
    SELECT AVG(course_count)
    FROM (
        SELECT course_id, COUNT(*) AS course_count
        FROM enrollments
        GROUP BY course_id
    )
)
ORDER BY course_title;
