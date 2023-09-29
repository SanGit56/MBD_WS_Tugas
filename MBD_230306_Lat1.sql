-- tabel
-- student
-- faculty
-- class
-- enrolled

-- Exercise 5.1 halaman 174 - 175 nomor 1 - 5

-- 1. Find the names of all Juniors (level = JR) who are enrolled in a class taught by Ivana Teach.

SELECT s.sname, s.age
FROM student s
INNER JOIN enrolled e ON s.snum = e.snum
INNER JOIN class c ON e.cname = c.name
INNER JOIN faculty f ON c.fid = f.fid
WHERE f.fname like '%I%Teach'
AND s.standing = 'JR';

--2. Find the age of the oldest student who is either a History major or enrolled in a course taught by I. Teach.

SELECT MAX(age) AS max_age
FROM (
	SELECT sname, age
	FROM student s 
	WHERE s.major = 'History'
	UNION
	SELECT s.sname, s.age
	FROM student s
	INNER JOIN enrolled e ON s.snum = e.snum
	INNER JOIN class c ON e.cname = c.name
	INNER JOIN faculty f ON c.fid = f.fid
	WHERE f.fname like '%I%Teach'
) AS a

-- Menggunakan CTE (Common table expression)
-- 1. temukan student yang majornya History
WITH history_student AS 
(
	SELECT sname, age
	FROM student s 
	WHERE s.major = 'History'
),
-- 2. Temukan student yang diajar Ivana Teach
student_iteach AS
(
	SELECT s.sname, s.age
	FROM student s
	INNER JOIN enrolled e ON s.snum = e.snum
	INNER JOIN class c ON e.cname = c.name
	INNER JOIN faculty f ON c.fid = f.fid
	WHERE f.fname like '%I%Teach'
	AND s.standing = 'JR'
),
-- 3. Union keduanya
union_result AS
(
	SELECT *
	FROM history_student
	UNION
	SELECT *
	FROM student_iteach
)
-- 4. Query final
SELECT MAX(age) AS max_age
FROM union_result


-- 3. Find the names of all classes that either meet in room R128 or have five or more students enrolled.

-- Class yang ada di R128
SELECT name
FROM class
WHERE room = 'R128'
UNION
-- Jumlah student di kelas >= 5
SELECT cname
FROM (
	SELECT cname, COUNT(snum)
	FROM enrolled
	GROUP BY cname
	HAVING COUNT(snum) >= 5
) as class_5

-- 4. Find the names of all students who are enrolled in two classes that meet at the same time.

SELECT s.sname, c.name, c.meets_at
FROM student s
INNER JOIN enrolled e ON s.snum = e.snum
INNER JOIN class c ON e.cname = c.name
ORDER BY s.sname, c.meets_at

SELECT S.sname, e.cname
FROM student s
INNER JOIN enrolled e ON s.snum = e.snum
WHERE e.cname IN (
	SELECT name
	FROM class
	WHERE meets_at IN (
		-- Slot jadwal dengan kelas lebih dari 1
		SELECT meets_at
		FROM (
			SELECT meets_at, count(meets_at)
			FROM class 
			GROUP BY 1
			HAVING COUNT(meets_at) = 2
		) AS a
	)
)

-- 5. Find the names of faculty members who teach in every room in which some class is taught.

SELECT fname 
FROM (
	SELECT fname, COUNT(DISTINCT room) AS jumlah
	FROM class c
	INNER JOIN faculty f ON c.fid = f.fid
	GROUP BY fname
	HAVING COUNT(DISTINCT room) = (
		SELECT COUNT(DISTINCT room)
		FROM class
	)
	ORDER BY jumlah desc
) AS temp

WITH jml_room AS
(
	SELECT COUNT(DISTINCT room) AS jumlah
	FROM class
),
faculty_room AS
(
	SELECT fname, COUNT(DISTINCT room)
	FROM class c
	INNER JOIN faculty f ON c.fid = f.fid
	GROUP BY fname
	HAVING COUNT(DISTINCT room) = (SELECT JUMLAH FROM jml_room)
)
SELECT * FROM faculty_room

-- Exercise 5.1 halaman 175 nomor 6 - 12

-- 6. Find the names of faculty members for whom the combined enrollment of the courses that they teach is less than five.

SELECT f.fname, COUNT(c.name)
FROM faculty f
INNER JOIN class c
ON c.fid = f.fid
INNER JOIN (
	SELECT s.snum, s.sname, e.cname
	FROM student s
	INNER JOIN enrolled e
	ON s.snum = e.snum) AS enrollment
ON c.name = enrollment.cname
GROUP BY f.fname
HAVING COUNT(c.name) < 5

-- 7. Print the level and the average age of students for that level, for each level.

SELECT DISTINCT standing, AVG(age)
FROM student
GROUP BY standing

-- 8. Print the level and the average age of students for that level, for all levels except JR.

SELECT DISTINCT standing, AVG(age)
FROM student
WHERE standing NOT LIKE ('JR')
GROUP BY standing

-- 9. For each faculty member that has taught classes only in room R128, print the faculty member’s name and the total number of classes she or he has taught.

SELECT f.fname, COUNT(c.fid)
FROM class c, faculty f
WHERE c.fid IN (
	SELECT c.fid
	FROM class c, faculty f
	WHERE c.room = 'R128'
	AND f.fid = c.fid
)
AND c.fid = f.fid
GROUP BY f.fname

-- 10. Find the names of students enrolled in the maximum number of classes.

SELECT s.sname
FROM student s, enrolled e
WHERE e.cname IN (
	SELECT cname
	FROM enrolled
	GROUP BY cname
	HAVING COUNT(cname) = (
		SELECT MAX(jml.siswa)
		FROM (
			SELECT cname, COUNT(snum) AS siswa
			FROM enrolled
			GROUP BY cname
		) jml
	)
)
AND s.snum = e.snum

-- 11. Find the names of students not enrolled in any class.

SELECT sname
FROM student
WHERE snum NOT IN (
	SELECT snum
	FROM enrolled
)

-- 12. For each age value that appears in Students, find the level value that appears most often. For example, 
if there are more FR level students aged 18 than SR, JR, or SO students aged 18, you should print the pair (18, FR).

WITH jml1 AS (
	SELECT age, standing, COUNT(standing) AS tingkat1
	FROM student
	GROUP BY age, standing
	ORDER BY age, standing
),
jml2 AS (
	SELECT jml1.age, MAX(jml1.tingkat1) AS tingkat2
	FROM jml1
	GROUP BY jml1.age
)
SELECT jml1.age, jml1.standing
FROM jml1, jml2
WHERE jml1.age = jml2.age
AND jml1.tingkat1 = jml2.tingkat2