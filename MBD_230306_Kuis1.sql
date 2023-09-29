-- tabel
-- aircraft
-- employees
-- certified
-- flights

-- Kuis dari Exercise 5.3 halaman 176

-- 1. Find the names of aircraft such that all pilots certified to operate them earn more than $80,000.

SELECT aid
FROM aircraft
WHERE aid NOT IN (
	SELECT a.aid
	FROM aircraft a, employees e, certified c
	WHERE a.aid = c.aid
	AND e.eid = c.eid
	AND e.salary < 80000)

-- 2. For each pilot who is certified for more than three aircraft, find the eid and the maximum cruising range of the aircraft for which she or he is certified.
-- BELUM

SELECT *
FROM certified
WHERE eid IN (
	SELECT DISTINCT pilot.eid
	FROM (
		SELECT *
		FROM certified
		WHERE eid IN (
			SELECT eid
			FROM (
				SELECT eid, COUNT(aid) AS sertif_pilot
				FROM certified
				GROUP BY eid) jml
			WHERE jml.sertif_pilot > 3)
	) pilot
)

-- 3. Find the names of pilots whose salary is less than the price of the cheapest route from Los Angeles to Honolulu.

SELECT ename
FROM employees
WHERE salary < (
	SELECT MIN(price)
	FROM flights
	WHERE origin LIKE 'Los Angeles'
	AND destination LIKE 'Honolulu')

-- 4. For all aircraft with cruisingrange over 1000 miles, find the name of the aircraft and the average salary of all pilots certified for this aircraft.
-- BELUM

SELECT *
FROM certified
WHERE aid IN (
	SELECT aid
	FROM aircraft
	WHERE crusingrange > 1000)
ORDER BY aid

-- 5. Find the names of pilots certified for some Boeing aircraft.

SELECT ename
FROM employees
WHERE eid IN (
	SELECT DISTINCT eid
	FROM certified
	WHERE aid IN (
		SELECT aid
		FROM aircraft
		WHERE aname LIKE '%Boeing%'))

-- 6. Find the aids of all aircraft that can be used on routes from Los Angeles to Chicago.

SELECT aid
FROM aircraft
WHERE aid IN (
	SELECT flno
	FROM flights
	WHERE origin LIKE 'Los Angeles'
	AND destination LIKE 'Chicago')

-- 7. Identify the routes that can be piloted by every pilot who makes more than $100,000.

SELECT origin, destination
FROM flights
WHERE flno IN (
	SELECT DISTINCT aid
	FROM certified
	WHERE eid IN (
		SELECT eid
		FROM employees
		WHERE salary > 100000))

-- 8. Print the enames of pilots who can operate planes with cruisingrange greater than 3000 miles but are not certified on any Boeing aircraft.
-- BELUM

WITH tigaribu AS (
	SELECT *
	FROM certified
	WHERE aid IN (
		SELECT aid
		FROM aircraft
		WHERE crusingrange > 3000)
),
boeing AS (
	SELECT ename
	FROM employees
	WHERE eid IN (
		SELECT DISTINCT eid
		FROM certified
		WHERE aid IN (
			SELECT aid
			FROM aircraft
			WHERE aname LIKE '%Boeing%'))
)

-- 9. A customer wants to travel from Madison to New York with no more than two changes of flight. List the choice of departure times from Madison if the customer wants to arrive in New York by 6 p.m.
-- BELUM

SELECT origin, destination, departs, arrives
FROM flights
WHERE origin LIKE 'Madison'
OR destination LIKE 'New York'

-- 10. Compute the difference between the average salary of a pilot and the average salary of all employees (including pilots).
-- BELUM

WITH gaji_kary AS (
	SELECT AVG(salary)
	FROM employees
),
gaji_pilot AS (
	SELECT AVG(salary)
	FROM (
		SELECT *
		FROM employees
		WHERE eid IN (
			SELECT DISTINCT eid
			FROM certified)) gaji
)
SELECT gaji_kary, gaji_pilot
FROM gaji_kary, gaji_pilot

-- 11. Print the name and salary of every nonpilot whose salary is more than the average salary for pilots.

SELECT *
FROM employees
WHERE eid NOT IN (
	SELECT DISTINCT eid
	FROM certified
)
AND salary > (
	SELECT AVG(salary)
	FROM (
		SELECT *
		FROM employees
		WHERE eid IN (
			SELECT DISTINCT eid
			FROM certified
		)
	) gaji
)

-- 12. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles

SELECT *
FROM employees
WHERE eid IN (
	SELECT DISTINCT eid
	FROM certified
	WHERE aid IN (
		SELECT aid
		FROM aircraft
		WHERE crusingrange > 1000))

-- 13. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles, but on at least two such aircrafts.
-- BELUM

SELECT DISTINCT eid
FROM certified
WHERE aid IN (
	SELECT aid
	FROM aircraft
	WHERE crusingrange > 1000)

-- 14. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles and who are certified on some Boeing aircraft.
-- BELUM

SELECT DISTINCT eid
FROM certified
WHERE aid IN (
	SELECT aid
	FROM aircraft
	WHERE crusingrange > 1000)