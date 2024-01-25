
-- DDL (DATA DEFINITION LANGUAGE)
-- tạo mới CSDL
CREATE DATABASE ra_fukuoka;
-- chọn CSDL
USE ra_fukuoka;
-- tạo bảng CSDL 
-- indexes: chỉ mục: 
-- Foreign Keys: khóa ngoại (trường để tham chiếu đến các bảng khác)
-- Triggers: hành động đi kèm khi hành động trên bảng
-- primary key: khóa chính trong bảng : dữ liệu ko trùng nhau, dữ liệu ko đc bỏ trống
-- not null: không được bỏ trống
-- default(giá_trị_default): 
CREATE TABLE categories(
	id varchar(36) PRIMARY KEY,
    name varchar(250) not null unique,
    status bit default 1
);
CREATE TABLE products(
	id varchar(36) PRIMARY KEY,
    name varchar(255) not null unique,
    categoryId varchar(36) not null,
    foreign key (categoryId) references categories(id),
    price float, 
    check(price > 1000),
    descriptions nvarchar(4000) default 'Mô tả', -- nvarchar: có thể dùng unicode (có dấu)
    status bit
);
-- xóa bảng
DROP TABLE categories;
DROP TABLE products;
-- cập nhật bảng
-- Sửa
ALTER TABLE categories MODIFY COLUMN name varchar(100);
-- Đổi tên bảng
ALTER TABLE category RENAME TO categories;
-- Đổi tên cột
ALTER TABLE categories RENAME COLUMN names TO name;
-- Xóa cột
ALTER TABLE categories DROP COLUMN name;
-- thêm cột
ALTER TABLE categories ADD COLUMN name varchar(250) not null;


-- DML (DATA MUNIPULATION LANGUAGE)
-- Tạo thêm CSDL
INSERT INTO categories(id,name,status) VALUE(uuid(),'Second category',1);
INSERT INTO products(id,name,price,categoryId,status) VALUE(uuid(),'Tivi',500,'36a2541b-bac1-11ee-9b1c-d89d67d112f3',1);

-- truy vấn
SELECT * FROM categories;
SELECT * FROM products;
	-- tương đối
SELECT id FROM categories WHERE name LIKE '%se%' ;
	-- tuyệt đối
SELECT id FROM categories WHERE name = 'Fist category' ;
-- cập nhật
UPDATE categories SET name = 'Update category';
-- xóa
	-- tuyệt đối
DELETE FROM categories WHERE name = 'Update category';
	-- tương đối
DELETE FROM categories WHERE name LIKE '%update%';

