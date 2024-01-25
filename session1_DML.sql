INSERT INTO banners(id,title,image,summary,link,order_by,status) VALUES ();
SELECT * FROM banners;

INSERT INTO contacts(id,email,address,message,status) VALUES (uuid(),'tung123@gmail.com','Japan','xin chào',1);
SELECT * FROM contacts;

INSERT INTO blogs(id,title,image,content,status) VALUES ();
SELECT * FROM blogs;

INSERT INTO abouts(id,title,image,content,status) VALUES ();
SELECT * FROM abouts;

INSERT INTO  orders(id,customer_id,total,status) VALUES ();
SELECT * FROM orders;

INSERT INTO customers(id,name,address,phone,email) VALUES ();
SELECT * FROM customers;

INSERT INTO order_details(id,product_id,order_id,price,quantity) VALUES ();
SELECT * FROM order_details;

INSERT INTO categorys(id,name,keyword,description,descriptions,status) VALUES ();
SELECT * FROM categorys;

INSERT INTO products(id,name,category_id,image,list_image,price,sale_price,description,keyword,content,status) VALUES ();
SELECT * FROM products;

INSERT INTO services(id,name,summary,content,image,order_by,status) VALUES ();
SELECT * FROM services;

INSERT INTO users(id) VALUES ();
SELECT * FROM users;

INSERT INTO books(id,user_id,service_id,name,phone,date) VALUES ();
SELECT * FROM books;

INSERT INTO comments(id,user_id,product_id,message,status) VALUES ();
SELECT * FROM comments;

