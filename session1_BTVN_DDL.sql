CREATE DATABASE diagram;

USE diagram;

CREATE TABLE banners(
id varchar(36) PRIMARY KEY,
title varchar(255) not null,
image text not null,
summary nvarchar(1000),
link text,
order_by varchar(255),
status bit default 1
);
DROP TABLE banners;

CREATE TABLE contacts(
id varchar(36) PRIMARY KEY,
email varchar(255), check(email LIKE '%@%'),
message nvarchar(1000),
status bit default 1
);
DROP TABLE contacts;

CREATE TABLE blogs(
id varchar(36) PRIMARY KEY,
title varchar(255) not null,
image text not null,
content nvarchar(1000),
status bit default 1
);
DROP TABLE blogs;

CREATE TABLE abouts(
id varchar(36) PRIMARY KEY,
title varchar(255) not null,
image text not null,
content nvarchar(1000),
status bit default 1
);
DROP TABLE abouts;

CREATE TABLE orders(
id varchar(36) PRIMARY KEY,
customer_id varchar(36), FOREIGN KEY (customer_id) references customers(id), 
total int, check(total >= 0),
status bit default 1
);
DROP TABLE orders;

CREATE TABLE customers(
id varchar(36) PRIMARY KEY,
name nvarchar(255) not null,
address nvarchar(1000) not null,
phone varchar(11), check(phone IN ('080%','070%','050%')),
email varchar(255), check(email LIKE '%@%')
);
DROP TABLE customers;

CREATE TABLE order_details(
id varchar(36) PRIMARY KEY, FOREIGN KEY (id) REFERENCES orders(id),
product_id varchar(36), FOREIGN KEY (product_id) REFERENCES products(id),
order_id varchar(36), 
price float,
quantity int
);
DROP TABLE order_details;

CREATE TABLE categorys(
id varchar(36) PRIMARY KEY,
name varchar(255) not null,
keyword varchar(10),
description nvarchar(1000),
descriptions nvarchar(1000),
status bit default 1
);
DROP TABLE categorys;

CREATE TABLE products(
id varchar(36) PRIMARY KEY,
name varchar(255) not null,
category_id varchar(36), FOREIGN KEY (category_id) REFERENCES categorys(id) ,
image text not null,
list_image varchar(1000),
price float,
sale_price float,
description nvarchar(1000),
keyword varchar(10),
content nvarchar(7000),
status bit default 1
);
DROP TABLE products;

CREATE TABLE services(
id varchar(36) PRIMARY KEY,
name varchar(255) not null,
summary nvarchar(1000),
content nvarchar(7000),
image text not null,
order_by varchar(255),
status bit default 1
);
DROP TABLE services;

CREATE TABLE books(
id varchar(36) PRIMARY KEY,
user_id varchar(36), FOREIGN KEY (user_id) REFERENCES users(id),
service_id varchar(36), FOREIGN KEY (service_id) REFERENCES services(id),
name varchar(255) not null,
phone varchar(11), check(phone IN ('080%','070%','050%')),
date date
);
DROP TABLE books;

CREATE TABLE users(
id varchar(36) PRIMARY KEY
);
DROP TABLE users;

CREATE TABLE comments(
id varchar(36) PRIMARY KEY,
user_id varchar(36), FOREIGN KEY (user_id) REFERENCES users(id),
product_id varchar(36), FOREIGN KEY (product_id) REFERENCES products(id),
message nvarchar(1000),
date date
);
DROP TABLE comments;


