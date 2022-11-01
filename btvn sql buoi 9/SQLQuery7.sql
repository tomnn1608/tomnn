create table HANG(
MaSoHang varchar(20) primary key,
TenHang nvarchar(255) not null,
DiaChi nvarchar(255) not null,
DienThoai varchar(15) not null
);
create table DANHSACHSANPHAM(
TenHang nvarchar(255) not null,
MoTa ntext,
DonVi nvarchar(20) not null,
Gia decimal(12,4) not null check(gia >=0) default 0,
SoLuong integer not null check(SoLuong >0),
id integer primary key identity(1,1),
MaSoHang varchar(20) foreign key references HANG(MaSoHang),

);

drop table DANHSACHSANPHAM;
drop table HANG;


