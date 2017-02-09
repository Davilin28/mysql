INSERT INTO product (category,id) VALUES(1,1);
INSERT INTO product (category,id) VALUES(2,1);
INSERT INTO product (category,id) VALUES(1,2);
INSERT INTO product (category,id) VALUES(2,2);

INSERT INTO customer (id) VALUES(1);
INSERT INTO customer (id) VALUES(2);
INSERT INTO customer (id) VALUES(3);

INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,1,1);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,1,2);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,1,3);

INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,2,1);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,2,2);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(1,2,3);

INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,1,1);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,1,2);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,1,3);

INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,2,1);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,2,2);
INSERT INTO product_order (product_category,product_id,customer_id) VALUES(2,2,3);
