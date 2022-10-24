create table BoPhan(
   ten nvarchar(100) not null,
   maBP varchar(20) primary key
   );
create table NhanVien(
   ten nvarchar(100) not null ,
   ngaysinh date not null ,
   diachi ntext not null,
   dienthoai varchar(15) primary key,
   chucvu nvarchar(225) not null,
   bangcap nvarchar(225) not null,
   luong integer not null check(luong >0),
   maBP varchar(20) not null foreign key references BoPhan(maBP)
);
create table ThietBi(
   ten nvarchar(100) not null,
   maTB varchar(20) primary key,
   soluong integer not null check(soluong >0),
);
create table NhanVien_ThietBi(
    dienthoai varchar(15) not null foreign key references NhanVien(dienthoai),
	maTB varchar(20) not null foreign key references ThietBi(maTB),
);