-- SQL Exercises (With Answers)

-- 1. Retrieve all students who enrolled in 2023.
SELECT * FROM students WHERE enrollment_year = 2023;

-- 2. Find students whose email contains 'gmail.com'.
SELECT * FROM students WHERE email LIKE '%gmail.com%';

-- 3. Count how many students are enrolled in the database.
SELECT COUNT(*) FROM students;

-- 4. Find students born between 2000 and 2005.
SELECT * FROM students WHERE birth_year BETWEEN 2000 AND 2005;

-- 5. List students sorted by last name in descending order.
SELECT s.first_name, s.last_name, c.course_name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id;

-- 6. Find the names of students and the courses they are enrolled in.
SELECT s.first_name, s.last_name, c.course_name FROM students s LEFT JOIN enrollments e ON s.student_id = e.student_id LEFT JOIN courses c ON e.course_id = c.course_id;

-- 7. List all students and their courses, ensuring students without courses are included (LEFT JOIN).
SELECT s.first_name, s.last_name, c.course_name FROM students s LEFT JOIN enrollments e ON s.student_id = e.student_id LEFT JOIN courses c ON e.course_id = c.course_id;

-- 8. Find all courses with no students enrolled (LEFT JOIN).
SELECT c.course_name FROM courses c LEFT JOIN enrollments e ON c.course_id = e.course_id WHERE e.student_id IS NULL;

-- 10. List courses and show the number of students enrolled in each course.
SELECT c.course_name, COUNT(e.student_id) AS student_count FROM courses c LEFT JOIN enrollments e ON c.course_id = e.course_id GROUP BY c.course_name;



