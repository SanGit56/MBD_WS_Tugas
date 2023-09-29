-- 1. Buatlah trigger pada tabel orders untuk melakukan perhitungan total harga, pajak (5.5% dari total harga) saat data dimasukkan (INSERT)
CREATE OR REPLACE FUNCTION log_hitung_harga()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
declare
    subtotal float;
    tax float;
    total float;
BEGIN
    SELECT p.price
    FROM products p
    WHERE id IN (
        SELECT DISTINCT o.product_id
        FROM orders o
    );

    tax = 0.055;
    subtotal = p.price * NEW.quantity;
    total = subtotal * tax;

	IF NEW.total <> OLD.total THEN
        UPDATE orders
        SET [
            created_at = now(),
            discount = NEW.discount,
            product_id = NEW.product_id,
            quantity = NEW.quantity,
            user_id = NEW.user_id,
            tax = tax,
            subtotal = NEW.subtotal,
            total = NEW.total
        ]
        WHERE id = id;
	END IF;

	RETURN NEW;
END;
$$

CREATE TRIGGER hitung_harga
  BEFORE INSERT
  ON orders
  FOR EACH ROW
  EXECUTE PROCEDURE log_hitung_harga();

-- 2. Buatlah trigger pada tabel reviews yang berfungsi untuk mengupdate rata-rata rating di tabel products ketika ada review baru yang ditambahkan. Demikian pula apabila ada review yang dihapus
CREATE OR REPLACE FUNCTION log_hitung_review()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
    ...

	IF NEW.total <> OLD.total THEN
        UPDATE orders
        SET rating = rating
        WHERE id = id;
	END IF;

	RETURN NEW;
END;
$$

CREATE TRIGGER hitung_review
  BEFORE INSERT, DELETE
  ON reviews
  FOR EACH ROW
  EXECUTE PROCEDURE log_hitung_review();