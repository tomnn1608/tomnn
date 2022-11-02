create table KhachHang(
   Ten nvarchar(225) not null,
   CMT int primary key,
   DiaChi nvarchar(225)  
);
create table SoThueBao(
   SoTB int primary key,
   LoaiTB nvarchar(100),
   NgayDangKy date not null check(NgayDangKy<= getdate()) default getdate(),
   SoCMT int foreign key references KhachHang(CMT),
);

drop table SoThueBao;
drop table KhachHang;