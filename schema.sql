create database ordermanagement;

\c ordermanagement

create table companies(
    company_id serial primary key,
    company_name text
);

create table customers(
    customer_id text,
    login_name text,
    customer_password bigint,
    customer_name text,
    company_id integer,
    credit_card_one text,
    credit_card_two text
);

create table orders(
    id serial primary key,
    created_at timestamp with time zone,
    order_name text,
    customer_id text
);

create table order_items(
    id serial primary key,
    order_id integer,
    price_per_unit real,
    quantity bigint,
    product text
);

create table deliveries(
    id serial primary key,
    order_item_id integer,
    delivered_quantity bigint
);