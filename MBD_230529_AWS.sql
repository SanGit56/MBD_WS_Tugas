-- buat basis data
CREATE DATABASE bljr_aws;

-- buat skema tabel
create table employees(
	eid numeric(9,0) primary key,
	ename varchar(30),
	salary numeric(10,2)
);

create table aircraft(
	aid numeric(9,0) primary key,
	aname varchar(30),
	crusingrange numeric(6,0)
);

create table certified(
	eid numeric(9,0),
	aid numeric(9,0),
	primary key(eid,aid),
	foreign key(eid) references employees,
	foreign key(aid) references aircraft
);

create table flights(
	flno numeric(4,0) primary key,
	origin varchar(20),
	destination varchar(20),
	distance numeric(6,0),
	departs date,
	arrives date,
	price numeric(7,2)
);

-- masukin data
INSERT INTO employees (eid, ename, salary) VALUES (242518965,'James Smith',120433);
INSERT INTO employees (eid, ename, salary) VALUES (141582651,'Mary Johnson',178345);
INSERT INTO employees (eid, ename, salary) VALUES (011564812,'John Williams',153972);
INSERT INTO employees (eid, ename, salary) VALUES (567354612,'Lisa Walker',256481);
INSERT INTO employees (eid, ename, salary) VALUES (552455318,'Larry West',101745);
INSERT INTO employees (eid, ename, salary) VALUES (550156548,'Karen Scott',205187);
INSERT INTO employees (eid, ename, salary) VALUES (390487451,'Lawrence Sperry',212156);
INSERT INTO employees (eid, ename, salary) VALUES (274878974,'Michael Miller',99890);
INSERT INTO employees (eid, ename, salary) VALUES (254099823,'Patricia Jones',24450);
INSERT INTO employees (eid, ename, salary) VALUES (356187925,'Robert Brown',44740);
INSERT INTO employees (eid, ename, salary) VALUES (355548984,'Angela Martinez',212156);
INSERT INTO employees (eid, ename, salary) VALUES (310454876,'Joseph Thompson',212156);
INSERT INTO employees (eid, ename, salary) VALUES (489456522,'Linda Davis',127984);
INSERT INTO employees (eid, ename, salary) VALUES (489221823,'Richard Jackson',23980);
INSERT INTO employees (eid, ename, salary) VALUES (548977562,'William Ward',84476);
INSERT INTO employees (eid, ename, salary) VALUES (310454877,'Chad Stewart',33546);
INSERT INTO employees (eid, ename, salary) VALUES (142519864,'Betty Adams',227489);
INSERT INTO employees (eid, ename, salary) VALUES (269734834,'George Wright',289950);
INSERT INTO employees (eid, ename, salary) VALUES (287321212,'Michael Miller',48090);
INSERT INTO employees (eid, ename, salary) VALUES (552455348,'Dorthy Lewis',92013);
INSERT INTO employees (eid, ename, salary) VALUES (248965255,'Barbara Wilson',43723);
INSERT INTO employees (eid, ename, salary) VALUES (159542516,'William Moore',48250);
INSERT INTO employees (eid, ename, salary) VALUES (348121549,'Haywood Kelly',32899);
INSERT INTO employees (eid, ename, salary) VALUES (090873519,'Elizabeth Taylor',32021);
INSERT INTO employees (eid, ename, salary) VALUES (619023588,'Jennifer Thomas',54921);
INSERT INTO employees (eid, ename, salary) VALUES (015645489,'Donald King',18050);
INSERT INTO employees (eid, ename, salary) VALUES (556784565,'Mark Young',205187);
INSERT INTO employees (eid, ename, salary) VALUES (573284895,'Eric Cooper',114323);
INSERT INTO employees (eid, ename, salary) VALUES (574489456,'William Jones',105743);
INSERT INTO employees (eid, ename, salary) VALUES (574489457,'Milo Brooks',20);

INSERT INTO aircraft (aid, aname, crusingrange) VALUES (1,'Boeing 747-400',8430);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (2,'Boeing 737-800',3383);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (3,'Airbus A340-300',7120);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (4,'British Aerospace Jetstream 41',1502);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (5,'Embraer ERJ-145',1530);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (6,'SAAB 340',2128);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (7,'Piper Archer III',520);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (8,'Tupolev 154',4103);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (9,'Schwitzer 2-33',30);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (10,'Lockheed L1011',6900);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (11,'Boeing 757-300',4010);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (12,'Boeing 777-300',6441);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (13,'Boeing 767-400ER',6475);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (14,'Airbus A320',2605);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (15,'Airbus A319',1805);
INSERT INTO aircraft (aid, aname, crusingrange) VALUES (16,'Boeing 727',1504);

INSERT INTO certified (eid, aid) VALUES (567354612,1);
INSERT INTO certified (eid, aid) VALUES (567354612,2);
INSERT INTO certified (eid, aid) VALUES (567354612,10);
INSERT INTO certified (eid, aid) VALUES (567354612,11);
INSERT INTO certified (eid, aid) VALUES (567354612,12);
INSERT INTO certified (eid, aid) VALUES (567354612,15);
INSERT INTO certified (eid, aid) VALUES (567354612,7);
INSERT INTO certified (eid, aid) VALUES (567354612,9);
INSERT INTO certified (eid, aid) VALUES (567354612,3);
INSERT INTO certified (eid, aid) VALUES (567354612,4);
INSERT INTO certified (eid, aid) VALUES (567354612,5);
INSERT INTO certified (eid, aid) VALUES (552455318,2);
INSERT INTO certified (eid, aid) VALUES (552455318,14);
INSERT INTO certified (eid, aid) VALUES (550156548,1);
INSERT INTO certified (eid, aid) VALUES (550156548,12);
INSERT INTO certified (eid, aid) VALUES (390487451,3);
INSERT INTO certified (eid, aid) VALUES (390487451,13);
INSERT INTO certified (eid, aid) VALUES (390487451,14);
INSERT INTO certified (eid, aid) VALUES (274878974,10);
INSERT INTO certified (eid, aid) VALUES (274878974,12);
INSERT INTO certified (eid, aid) VALUES (355548984,8);
INSERT INTO certified (eid, aid) VALUES (355548984,9);
INSERT INTO certified (eid, aid) VALUES (310454876,8);
INSERT INTO certified (eid, aid) VALUES (310454876,9);
INSERT INTO certified (eid, aid) VALUES (548977562,7);
INSERT INTO certified (eid, aid) VALUES (142519864,1);
INSERT INTO certified (eid, aid) VALUES (142519864,11);
INSERT INTO certified (eid, aid) VALUES (142519864,12);
INSERT INTO certified (eid, aid) VALUES (142519864,10);
INSERT INTO certified (eid, aid) VALUES (142519864,3);
INSERT INTO certified (eid, aid) VALUES (142519864,2);
INSERT INTO certified (eid, aid) VALUES (142519864,13);
INSERT INTO certified (eid, aid) VALUES (142519864,7);
INSERT INTO certified (eid, aid) VALUES (269734834,1);
INSERT INTO certified (eid, aid) VALUES (269734834,2);

INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (99,'Los Angeles','Washington D.C.',2308,'2005/04/12 09:30','2005/04/12 21:40',235.98);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (13,'Los Angeles','Chicago',1749,'2005/04/12 08:45','2005/04/12 20:45',220.98);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (346,'Los Angeles','Dallas',1251,'2005/04/12 11:50','2005/04/12 19:05',225.43);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (387,'Los Angeles','Boston',2606,'2005/04/12 07:03','2005/04/12 17:03',261.56);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (7,'Los Angeles','Sydney',7487,'2005/04/12 22:30','2005/04/14 6:10',1278.56);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (2,'Los Angeles','Tokyo',5478,'2005/04/12 12:30','2005/04/13 15:55',780.99);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (33,'Los Angeles','Honolulu',2551,'2005/04/12 09:15','2005/04/12 11:15',375.23);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (34,'Los Angeles','Honolulu',2551,'2005/04/12 12:45','2005/04/12 15:18',425.98);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (76,'Chicago','Los Angeles',1749,'2005/04/12 08:32','2005/04/12 10:03',220.98);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (68,'Chicago','New York',802,'2005/04/12 09:00','2005/04/12 12:02',202.45);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (7789,'Madison','Detroit',319,'2005/04/12 06:15','2005/04/12 08:19',120.33);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (701,'Detroit','New York',470,'2005/04/12 08:55','2005/04/12 10:26',180.56);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (702,'Madison','New York',789,'2005/04/12 07:05','2005/04/12 10:12',202.34);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (4884,'Madison','Chicago',84,'2005/04/12 22:12','2005/04/12 23:02',112.45);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (2223,'Madison','Pittsburgh',517,'2005/04/12 08:02','2005/04/12 10:01',189.98);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (5694,'Madison','Minneapolis',247,'2005/04/12 08:32','2005/04/12 09:33',120.11);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (304,'Minneapolis','New York',991,'2005/04/12 10:00','2005/04/12 1:39',101.56);
INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price) VALUES (149,'Pittsburgh','New York',303,'2005/04/12 09:42','2005/04/12 12:09',116.50);

-- Find the names of aircraft such that all pilots certified to operate them earn more than $80,000.
SELECT aname
FROM aircraft
WHERE aid NOT IN (
	SELECT a.aid
	FROM aircraft a, employees e, certified c
	WHERE a.aid = c.aid
	AND e.eid = c.eid
	AND e.salary < 80000)

-- Find the names of pilots whose salary is less than the price of the cheapest route from Los Angeles to Honolulu.
SELECT ename
FROM employees
WHERE salary < (
	SELECT MIN(price)
	FROM flights
	WHERE origin LIKE 'Los Angeles'
	AND destination LIKE 'Honolulu')

-- Print the name and salary of every nonpilot whose salary is more than the average salary for pilots.
SELECT ename, salary
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

-- Find the names of pilots certified for some Boeing aircraft.
SELECT ename
FROM employees
WHERE eid IN (
	SELECT DISTINCT eid
	FROM certified
	WHERE aid IN (
		SELECT aid
		FROM aircraft
		WHERE aname LIKE '%Boeing%'))

-- Identify the routes that can be piloted by every pilot who makes more than $100,000.
SELECT origin, destination
FROM flights
WHERE flno IN (
	SELECT DISTINCT aid
	FROM certified
	WHERE eid IN (
		SELECT eid
		FROM employees
		WHERE salary > 100000))