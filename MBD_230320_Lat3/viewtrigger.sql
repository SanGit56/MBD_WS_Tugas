-- 1. Create a view to display salary and age of each customer.
CREATE OR REPLACE VIEW salary_age AS
	SELECT id, salary, age
	FROM customers;

SELECT *
FROM salary_age;

-- 2. Create a trigger to record log that display customer salary difference data (before change and after change) if changes in salary column are made to the database
-- buat tabel log
CREATE TABLE gaji_kustomer (
   id INT GENERATED ALWAYS AS IDENTITY,
   id_kust INT NOT NULL,
   gaji VARCHAR(40) NOT NULL,
   tgl_ubah TIMESTAMP(6) NOT NULL
);

-- buat function
CREATE OR REPLACE FUNCTION log_perubahan_gaji()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	IF NEW.salary <> OLD.salary THEN
		 INSERT INTO gaji_kustomer(id_kust,gaji,tgl_ubah)
		 VALUES(OLD.id,OLD.salary,now());

     INSERT INTO gaji_kustomer(id_kust,gaji,tgl_ubah)
		 VALUES(NEW.id,NEW.salary,now());
	END IF;

	RETURN NEW;
END;
$$

-- buat trigger
CREATE TRIGGER perubahan_gaji
  BEFORE UPDATE
  ON customers
  FOR EACH ROW
  EXECUTE PROCEDURE log_perubahan_gaji();

-- ubah data
UPDATE customers
SET salary = 2500
WHERE ID = 3;

UPDATE customers
SET salary = 7500
WHERE ID = 1;

UPDATE customers
SET salary = 5500
WHERE ID = 4;

UPDATE customers
SET salary = 0
WHERE age = 25;

-- tampilkan data
SELECT *
FROM gaji_kustomer