Create database Nhom7_INF205_Assignment1_Quanlybanhang
go

use Nhom7_INF205_Assignment1_Quanlybanhang
go


create table client (
client_id int primary key,
full_name nvarchar (255) not null,
email nvarchar (255)not null
)
go

create table purchase (
purchase_id int primary key ,
purchase_no nvarchar(12),
client_id int ,
constraint fk_purchase_client foreign key (client_id) references client (client_id)

)
go

create table productcategory(
productcategory_id int primary key,
names nvarchar (255),
parent_category_id int
constraint fk_productcategory foreign key (productcategory_id) references productcategory (productcategory_id)

)
go

create table product (
product_id int primary key,
productcategory_id int,
sku nvarchar (10),
names nvarchar (255),
price decimal (12,2),
discription nvarchar (1000),
img nvarchar(50),
constraint fk_product_productcategory foreign key (productcategory_id) references productcategory (productcategory_id)
)
go

create table purchaseitem  (
purchase_item_id int primary key,
purchase_id int,
product_id int,
amount int,
constraint fk_purchaseitem_purchase foreign key (purchase_id) references purchase (purchase_id),
constraint fk_purchaseitem_product foreign key (product_id) references product (product_id)
)
go


-- INSERT BANG CLIENT--
insert into client (client_id,full_name, email)
values (1,N'TRẦN VĂN HUY','HUYTVPH04883@FPT.EDU.VN')

insert into client (client_id,full_name, email)
values (2,N'LÊ CÔNG HUY','HUYLCPH05040@FPT.EDU.VN')

insert into client (client_id,full_name, email)
values (3,N'ĐỖ ANH TUẤN','TUANDAPH05326@FPT.EDU.VN')

insert into client (client_id,full_name, email)
values (4,N'NGUYỄN ĐỨC THẮNG','THANGNDPH05463@FPT.EDU.VN')

insert into client (client_id,full_name, email)
values (5,N'NGỖ XUÂN TÙNG','TUNGNXPH06325@FPT.EDU.VN')

--INSERT BANG PURCHASE--
insert into purchase (purchase_id, purchase_no,client_id)
values (1,'DH1',1)

insert into purchase (purchase_id, purchase_no,client_id)
values (2,'DH2',2)

insert into purchase (purchase_id, purchase_no,client_id)
values (3,'DH3',3)

insert into purchase (purchase_id, purchase_no,client_id)
values (4,'DH4',4)

insert into purchase (purchase_id, purchase_no,client_id)
values (5,'DH5',5)

--INSERT  BANG PRODUCT_CATEGORY--
insert into productcategory (productcategory_id,names,parent_category_id)
values(1,N'SÁCH VĂN HỌC',1)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(2,N'SÁCH KINH TẾ',2)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(3,N'SÁCH THIẾU NHI',3)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(4,N'TỪ ĐIỂN',4)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(5,N'SÁCH HỌC NGOẠI NGỮ',5)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(6,N'SÁCH HỌC NGOẠI NGỮ',5)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(7,N'SÁCH HỌC NGOẠI NGỮ',5)

insert into productcategory ( productcategory_id,names,parent_category_id )
values(8,N'SÁCH HỌC NGOẠI NGỮ',5)

--INSERT BANG PRODUCT--
insert into product (product_id,productcategory_id,sku,names,price,discription ,img)
values (1,1,N'vnđ',N'Thanh Xuân Không Hối Tiếc',200000,N'Chất lượng tốt', 'images/anh1.jpg')

insert into product (product_id,productcategory_id,sku,names,price,discription ,img)
values (2,2,N'vnđ',N'Tôi Tài Giỏi - Bạn Cũng Thế',200000,N'Chất lượng tốt', 'images/anh2.jpg')

insert into product (product_id,productcategory_id,sku,names,price,discription ,img)
values (3,1,N'vnđ',N'Chuyện Con Mèo Dạy Hải Âu Bay ',200000,N'Chất lượng tốt', 'images/anh3.jpg')

insert into product (product_id,productcategory_id,sku,names,price,discription ,img)
values (4,2,N'vnđ',N'Từ Điển Pháp - Việt (Tái Bản 2015)',200000,N'Chất lượng tốt', 'images/anh4.jpg')

insert into product (product_id,productcategory_id,sku,names,price,discription ,img)
values (5,1,N'vnđ',N'Cẩm Nang Tự Học IELTS',200000,N'Chất lượng tốt', 'images/anh5.jpg')

--INSERT BANG PURCHASE_ITEM--

insert into purchaseitem (purchase_item_id,purchase_id,product_id,amount)
values (1,1,1,10)
insert into purchaseitem (purchase_item_id,purchase_id,product_id,amount)
values (2,2,2,20)
insert into purchaseitem (purchase_item_id,purchase_id,product_id,amount)
values (3,3,3,30)
insert into purchaseitem (purchase_item_id,purchase_id,product_id,amount)
values (4,4,4,40)
insert into purchaseitem (purchase_item_id,purchase_id,product_id,amount)
values (5,5,5,50)

