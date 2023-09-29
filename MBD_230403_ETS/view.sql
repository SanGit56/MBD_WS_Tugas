-- 1. Buatlah view products terlaris berdasarkan kuantitas pembelian (20 teratas). Kolom yang ditampilkan adalah id, category, title, vendor, dan jumlah pembelian. Lakukan query terhadap view tersebut
CREATE VIEW kuantitas AS
	SELECT p.id, p.category, p.title, p.vendor, SUM(o.quantity) jml
	FROM orders o, products p
	WHERE p.id = o.product_id
	GROUP BY p.id
	ORDER BY jml DESC
	LIMIT 20;

SELECT *
FROM kuantitas;

-- 2. Buatlah view products terlaris berdasarkan nominal pembelian sebelum pajak (20 teratas). Kolom yang ditampilkan adalah id, category, title, vendor, dan total pembelian. Lakukan query terhadap view tersebut
CREATE VIEW nominal AS
	SELECT p.id, p.category, p.title, p.vendor, SUM(o.quantity) total
	FROM orders o, products p
	WHERE p.id = o.product_id
	GROUP BY p.id
	ORDER BY SUM(o.subtotal) DESC
	LIMIT 20;

SELECT *
FROM nominal;

-- 3. Buatlah view products beserta rata-rata rating dan jumlah pemberi rating, diurutkan berdasarkan jumlah pemberi rating terbanyak dan rata-rata rating tertinggi. Kolom yang ditampilkan: id, title, vendor, rata-rata rating, jumlah pemberi rating. Lakukan query terhadap view tersebut
CREATE VIEW rating AS
	SELECT p.id, p.title, p.vendor, AVG(r.rating) rata2rating, COUNT(r.reviewer) pengulas
	FROM products p, reviews r
	WHERE p.id = r.product_id
	GROUP BY p.id
	ORDER BY COUNT(r.reviewer) DESC, AVG(r.rating) DESC
	LIMIT 20;

SELECT *
FROM rating;

-- 4. Buatlah view yang berisi data customer dan total pembelian yang pernah dia lakukan diurutkan dari total pembelian terbesar. Kolom yang ditampilkan: id users, name, total pembelian. Lakukan query terhadap view tersebut
CREATE VIEW beli AS
	SELECT u.id, u.name, SUM(o.quantity) total
	FROM users u, orders o
	WHERE u.id = o.user_id
	GROUP BY u.id
	ORDER BY SUM(o.quantity) DESC
	LIMIT 20;

SELECT *
FROM beli;