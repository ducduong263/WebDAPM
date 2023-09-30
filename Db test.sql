CREATE DATABASE TEST
GO
USE TEST
GO
CREATE TABLE Category	
(cate_id int identity(1,1) not null primary key,
cate_name nvarchar(50) not null)
GO
CREATE TABLE Brand(
brand_id int identity(1,1) not null primary key, 
brand_name nvarchar(50) not null)
GO
CREATE TABLE Product(
pro_id int identity(1,1) not null primary key,
pro_name nvarchar(200) not null,
cate_id int not null,
brand_id int not null,
discount_id int not null,
price float not null,
buyturn int not null,
quantity int not null,
status_ char(1) null,
specification nvarchar(max) null,
pro_img nvarchar(max) null,
pro_description nvarchar(max) null)
GO
Create table Discount(
discount_id int identity(1,1) not null primary key,
discount_name nvarchar(100) not null,
discount_start datetime not null,
discount_end datetime not null,
discount_price float not null,
discount_code nvarchar(10) null,
quantity int not null)
go
create table Account(
acc_id int identity(1,1) not null primary key,
acc_password varchar(max) null,
acc_status char(1) null,
email nvarchar(100) not null,
acc_name nvarchar(50) not null,
phone varchar(10) not null,
avatar text null,
role int not null)
go
create table AccountAddress(
acc_add_id int identity(1,1) not null primary key,
acc_id int not null,
acc_address nvarchar(200) not null,
acc_phone varchar(10) null,
acc_username nvarchar(20) null,
isDefault bit not null)
go
create table Contact(
contact_id int identity(1,1) not null primary key,
_name nvarchar(max) not null,
phone varchar(10) not null,
email nvarchar(max) not null,
content nvarchar(max) not null,
_status char(1) not null)
go
create table Delivery(
delivery_id int identity(1,1) not null primary key,
delivery_name nvarchar(100) not null,
price float not null,
status char(1) null)
go
create table Oder_Detail(
pro_id int not null,
cate_id int not null,
discount_id int not null,
oder_id int not null,
price float not null,
_status char(1) null,
quantity int not null,
CONSTRAINT PK_OrderDetail PRIMARY KEY (
        pro_id,
        cate_id,
        discount_id,
        oder_id))
go
create table [Order](
order_id int identity(1,1) not null primary key,
payment_id int not null,
delivery_id int not null,
oder_date datetime not null,
total float not null,
acc_id int not null,
[status] char(1) null,
order_note nvarchar(200) null,
orderAddressId int null)
go
create table Payment(
payment_id int identity(1,1) not null primary key,
payment_name nvarchar(50) not null,
[status] char(1) null)
go 
create table Feedback(
feedback_id int identity(1,1) not null primary key,
account_id int not null,
product_id int not null,
rate_star int not null,
[status] char(1) null,
content nvarchar(max) null)
go
create table ReplyFeedback(
rep_feed_id int identity(1,1) not null primary key,
content nvarchar(max) null,
[status] nvarchar(1) null,
feedback_id int not null,
acc_id int not null)
