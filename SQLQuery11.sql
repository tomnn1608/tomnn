create table THONGTIN(
   HoVaTen nvarchar(225) not null,
   DiaChi nvarchar(225) not null,
   NgaySinh date not null check (NgaySinh<= getdate()) default getdate(),
   id int identity(1,1) primary key
);
create table DIENTHOAI(
   SoDT int not null primary key,
   idTT int foreign key references THONGTIN(id)
);

drop table DIENTHOAI;
drop table THONGTIN;

insert into THONGTIN(HoVaTen,DiaChi,NgaySinh)
values(N'Nguyễn Văn An',N'111 Nguyễn Trãi,Thanh Xuân,Hà Nội','1987-11-18')

insert into  DIENTHOAI(SoDT,idTT)
values(987654321,1),
      (09873452,1),
	  (09832323,1),
	  (09434343,1)

--bai 4
--a
select * from THONGTIN;
--b
select * from DIENTHOAI;
--bai 5
--a
select * from THONGTIN order by HoVaTen asc;
--b
select SoDT from DIENTHOAI where idTT in
(select id from THONGTIN where HoVaTen like N'Nguyễn Văn An');
--c
select HoVaTen from THONGTIN where NgaySinh like '1987-11-18';
--bai 6
--a
select count(*) as SoDT from DIENTHOAI where idTT in
(select id from THONGTIN where HoVaTen like N'Nguyễn Văn An');
--b
select count(HoVaTen) from THONGTIN where NgaySinh like'0000-00-12'; 
--c
select a.*,b.SoDT from THONGTIN a
inner join DIENTHOAI b
on a.id = b.idTT;
--d
select a.*,b.SoDT from THONGTIN a
inner join DIENTHOAI b
on a.id = b.idTT
where SoDT like 123456789;



