insert into customer(name) VALUES ('Bill');
insert into customer(name) VALUES ('Frank');
insert into customer(name) VALUES ('Tom');

insert into product(name, cost) VALUES ('Football', 2019);
insert into product(name, cost) VALUES ('Hockey Stick', 5099);
insert into product(name, cost) VALUES ('T-shirt', 1000);

insert into purchase(product_id, customer_id) VALUES (1, 1);
insert into purchase(product_id, customer_id) VALUES (2, 1);
insert into purchase(product_id, customer_id) VALUES (3, 1);
insert into purchase(product_id, customer_id) VALUES (1, 3);