--câu 1
SELECT u.user_id, u.user_name, o.order_id FROM users AS u JOIN orders AS o ON u.user_id = o.order_id;

--câu 2
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS so_don_hang FROM orders AS o JOIN users AS u ON o.user_id = u.user_id GROUP BY u.user_name, u.user_id;

--câu 3
SELECT order_id AS ma_don_hang, COUNT(product_id) AS so_san_pham FROM order_details GROUP BY order_id;

--câu 4
SELECT u.user_id, u.user_name, o.order_id, p.product_name FROM users AS u JOIN orders AS o ON u.user_id = o.user_id JOIN order_details AS od ON o.order_id = od.order_id JOIN products AS p ON od.product_id = p.product_id ORDER BY o.order_id ASC, p.product_name ASC;

--câu 5
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS so_luong_don_hang FROM users AS u JOIN orders AS o ON u.user_id = o.user_id GROUP BY u.user_id, u.user_name ORDER BY so_luong_don_hang DESC LIMIT 7;

--câu 6
SELECT u.user_id, u.user_name, o.order_id, p.product_name FROM users AS u JOIN orders AS o ON u.user_id = o.user_id JOIN order_details AS od ON o.order_id = od.order_id JOIN products AS p ON od.product_id = p.product_id WHERE (p.product_name LIKE '%Samsung%' OR p.product_name LIKE '%Apple%') ORDER BY o.order_id DESC LIMIT 7;

--câu 7
SELECT u.user_id, u.user_name, o.order_id, SUM(p.product_price) AS tong_tien_don_hang FROM users AS u JOIN orders AS o ON u.user_id = o.user_id JOIN order_details AS od ON o.order_id = od.order_id JOIN products AS p ON od.product_id = p.product_id GROUP BY u.user_id, u.user_name, o.order_id ORDER BY o.order_id DESC;

--câu 8


--câu 9


--câu 10