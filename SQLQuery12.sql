create table NHAXUATBAN(
   TenNXB nvarchar(255) not null,
   DiaChi nvarchar(255) not null,
   idNXB int primary key identity(1,1)
);
create table TACGIA(
   TenTG varchar(255) not null,
   idTG int primary key identity(1,1)
);
create table LOAI(
   TenLoaiSach nvarchar(255) not null,
   idLoai int primary key identity(1,1)
);
create table SACH(
   TenSach nvarchar(255) not null,
   MaSach varchar(20) primary key,
   NoiDung ntext,
   SoLuong int not null,
   Gia int not null check(gia>=0) default 0,
   NamXuatBan date not null check(NamXuatBan<= getdate()) default getdate(),
   LanXuatBan int not null,
   idNXB int not null foreign key references NHAXUATBAN(idNXB),
   idTG int not null foreign key references TACGIA(idTG),
   idLoai int not null foreign key references LOAI(idLoai)
);
drop table SACH;
drop table LOAI;
drop table TACGIA;
drop table NHAXUATBAN;

insert into NHAXUATBAN(TenNXB,DiaChi)
values(N'Tri Thức',N'53 Nguyễn Du,Hai Bà Trưng,Hà Nội')

insert into TACGIA(TenTG)
values('Eran Katz')

insert into LOAI(TenLoaiSach)
values(N'Khoa học xã hội')

insert into SACH(TenSach,MaSach,NoiDung,SoLuong,Gia,NamXuatBan,LanXuatBan,idNXB,idTG,idLoai)
values(N'Trí tuệ Do Thái','B001',N'Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc
trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ
những bí ẩn về sự thông thái của người Do Thái, của một dân tộc
thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí
thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính
văn hóa',100,79000,'2010-1-11',1,1,1,1)

select * from SACH;
select * from LOAI;
select * from TACGIA;
select * from NHAXUATBAN;
--1

--2

--3
create index TenSach_index on SACH(TenSach);
select * from SACH where NamXuatBan > ('2008') and NamXuatBan < ('2022');
--4
select top 10 * from SACH order by Gia asc;
--5
select * from SACH where TenSach like N'tin học'
--6
select * from SACH where TenSach like 'T%' order by TenSach asc
--7
select TenSach from SACH where idNXB in
(select idNXB from NHAXUATBAN where TenNXB like N'Tri thức')
--8
select * from NHAXUATBAN where idNXB in
(select idNXB from SACH where TenSach like N'Trí tuệ Do Thái')
--9
select b.MaSach,TenSach,NamXuatBan,a.TenNXB from NHAXUATBAN a inner join SACH b 
on a.idNXB = b.idNXB;
--10
select top 1 * from SACH order by Gia asc
--11
select top 1 * from SACH order by SoLuong asc
--12
select * from SACH where idTG in
(select idTG from TACGIA where TenTG like N'Eran Katz')
--13

--14
select count(*) from SACH where idNXB in
(select idNXB from NHAXUATBAN where TenNXB like N'Tri thức');
--15
select count(*) from SACH where idLoai in
(select idLoai from LOAI where TenLoaiSach like N'Khoa học xã hội')
--16
create index SACH_index on SACH(TenSach);
--17

--18

--19

--20


