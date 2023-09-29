-- 1. Temukan pegawai yang telah bekerja lebih dari 25 tahun. Tampilkan nama, tanggal mulai bekerja, dan lama bekerja.
SELECT first_name, last_name, hire_date, EXTRACT(YEAR FROM AGE(hire_date)) AS lama_kerja
FROM employees.employee
WHERE EXTRACT(YEAR FROM AGE(hire_date)) > 25
;

-- 2. Temukan pegawai yang seharusnya sudah pensiun (usia >= 60 tahun)
SELECT first_name, last_name, EXTRACT(YEAR FROM AGE(birth_date)) AS umur
FROM employees.employee
WHERE EXTRACT(YEAR FROM AGE(birth_date)) >= 60
;

-- 3. Temukan pegawai dengan gaji tertinggi dan termuda yang masih bekerja dan gajinya masih valid (to_date = 9999-01-01).
SELECT e.first_name, e.last_name, EXTRACT(YEAR FROM AGE(e.birth_date)) AS umur, s.amount
FROM employees.employee e, employees.salary s
WHERE s.employee_id = e.id
AND s.to_date = '9999-01-01'
ORDER BY s.amount DESC, umur ASC
LIMIT 1
;

-- 4. Buatlah data daftar manager beserta usia saat mereka menjabat.
SELECT e.first_name, e.last_name, EXTRACT(YEAR FROM AGE(dm.from_date, e.birth_date)) AS umur_jabat
FROM employees.employee e, employees.department_manager dm
WHERE e.id = dm.employee_id
;

-- 5. Tampilkan departemen yang memiliki karyawan dengan usia di bawah rata-rata terbanyak. Tampilkan nama departemen dan jumlah karyawannya.
SELECT jml_rekam.dept_name, COUNT(*) AS jml_krywn_usia_bwh_rt2
FROM (
	SELECT d.id, d.dept_name, e.first_name, e.last_name, EXTRACT(YEAR FROM AGE(e.birth_date)) AS umur
	FROM employees.employee e, employees.department_employee de, employees.department d
	WHERE EXTRACT(YEAR FROM AGE(e.birth_date)) < (
		SELECT AVG(EXTRACT(YEAR FROM AGE(e.birth_date)))
		FROM employees.employee e
	)
	AND e.id = de.employee_id
	AND de.department_id = d.id
	ORDER BY d.id
) jml_rekam
GROUP BY jml_rekam.dept_name
LIMIT 1
;