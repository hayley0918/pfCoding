insert into companies (company_name) values ('Roga & Kopyta');
insert into companies (company_name) values ('Pupkin & Co');

insert into customers (customer_id, login_name, customer_password, customer_name, company_id, credit_card_one, credit_card_two) values ('ivan', 'ivan', 12345, 'Ivan Ivanovich', 1, '*****-1234', '*****-5678');
insert into customers (customer_id, login_name, customer_password, customer_name, company_id, credit_card_one, credit_card_two) values ('petr', 'petr', 54321, 'Petr Petrovich', 2, '*****-4321', '*****-8765');

insert into orders (created_at, order_name, customer_id) values ('2020-01-02T15:34:12Z', 'PO #001-I', 'ivan');
insert into orders (created_at, order_name, customer_id) values ('2020-01-15T17:34:12Z', 'PO #002-I', 'ivan');
insert into orders (created_at, order_name, customer_id) values ('2020-01-05T05:34:12Z', 'PO #003-I', 'ivan');
insert into orders (created_at, order_name, customer_id) values ('2020-02-02T15:34:12Z', 'PO #004-I', 'ivan');
insert into orders (created_at, order_name, customer_id) values ('2020-01-03T10:34:12Z', 'PO #005-I', 'ivan');
insert into orders (created_at, order_name, customer_id) values ('2020-01-02T15:34:12Z', 'PO #001-P', 'petr');
insert into orders (created_at, order_name, customer_id) values ('2020-01-15T17:34:12Z', 'PO #002-P', 'petr');
insert into orders (created_at, order_name, customer_id) values ('2020-01-05T05:34:12Z', 'PO #003-P', 'petr');
insert into orders (created_at, order_name, customer_id) values ('2020-02-02T15:34:12Z', 'PO #004-P', 'petr');
insert into orders (created_at, order_name, customer_id) values ('2020-01-03T10:34:12Z', 'PO #005-P', 'petr');

insert into order_items (order_id, price_per_unit, quantity, product) values (1, 1.3454, 10, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (2, 23.14, 11, 'Corrugated Box' );
insert into order_items (order_id, price_per_unit, quantity, product) values (3, 123.0345, 12, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (4, null, 13, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (5, 100, 14, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (6, 1.5454, 15, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (7, 25.14, 16, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (8, 133.0345, 17, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (9, 13.456, 18, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (10, 110, 19, 'Corrugated Box');
insert into order_items (order_id, price_per_unit, quantity, product) values (1, 45.2334, 20, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (2, null, 21, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (3, 273.1234, 22, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (4, 11.45, 23, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (5, 12.467, 24, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (6, 11, 25, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (7, 123, 26, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (8, 173.1234, 27, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (9, 23.876, 28, 'Hand sanitizer');
insert into order_items (order_id, price_per_unit, quantity, product) values (10, 120, 29, 'Hand sanitizer');


insert into deliveries (order_item_id, delivered_quantity) values (1, 5);
insert into deliveries (order_item_id, delivered_quantity) values (2, 11);
insert into deliveries (order_item_id, delivered_quantity) values (3, 12);
insert into deliveries (order_item_id, delivered_quantity) values (4, 3);
insert into deliveries (order_item_id, delivered_quantity) values (6, 15);
insert into deliveries (order_item_id, delivered_quantity) values (7, 8);
insert into deliveries (order_item_id, delivered_quantity) values (8, 3);
insert into deliveries (order_item_id, delivered_quantity) values (16, 25);
insert into deliveries (order_item_id, delivered_quantity) values (17, 26);
insert into deliveries (order_item_id, delivered_quantity) values (18, 27);
insert into deliveries (order_item_id, delivered_quantity) values (19, 28);
insert into deliveries (order_item_id, delivered_quantity) values (20, 29);
insert into deliveries (order_item_id, delivered_quantity) values (4, 5);
insert into deliveries (order_item_id, delivered_quantity) values (8, 8);
insert into deliveries (order_item_id, delivered_quantity) values (8, 6);
