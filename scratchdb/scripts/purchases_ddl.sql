CREATE TABLE product(
    id SERIAL NOT NULL,
    name varchar(255),
    cost integer,
    PRIMARY KEY(id)
);

CREATE TABLE customer(
    id SERIAL NOT NULL,
    name varchar(255),
    PRIMARY KEY(id)
);

CREATE TABLE purchase(
    id SERIAL NOT NULL,
    product_id integer,
    customer_id integer,
    PRIMARY KEY(id),
    CONSTRAINT purchase_product_id_fkey FOREIGN key(product_id) REFERENCES product(id),
    CONSTRAINT purchase_customer_id_fkey FOREIGN key(customer_id) REFERENCES customer(id)
);