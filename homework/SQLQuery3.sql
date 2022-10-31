  insert into KHachHang(ten,diachi,dienthoai)
values(N'Nguyễn Văn An',N' 111 Nguyễn Trãi , Thanh Xuân , Hà Nội','0987654321');

select * from KhachHang;

  insert into SanPham(ten,donvi,mota,gia)
values(N'Máy Tính T450',N'Chiếc',N'Máy nhập mới',1000);

 insert into SanPham(ten,donvi,mota,gia)
values(N'Máy in samsung',N'Chiếc',N'Máy đang ế',100),
(N'Điện thoại Nokia 5670',N'CHiếc',N'Điện thoại đang hot',200);

select * from SanPham;

  insert into DonHang(ma,ngaydat,dienthoai,tongtien)
values('124','2022-10-26','0987654321',1500);  

select * from DonHang;    

  insert into DonHangSanPham(maDH,spid,soluong,thanhtien)
values('123',1,1,1000),('123',2,2,400),('123',3,1,100);

select * from DonHangSanPham;

delete KhachHang
delete SanPham
delete DonHang
delete DonHangSanPham

--
--update SanPham set gia = 150 where id = 3;
--update SanPham set gia = gia + 50 where id = 3;
--update SanPham set gia = gia + 50,mota= N'Máy xịn mới nhập'
--where id = 3;
--update SanPham set gia = gia + 50 where gia < 1000; 

--delete from SanPham where id =3;

-- liet ke 
--select * from SanPham;
--select ten as productName,donvi as unit,gia as price from SanPham;
--select * from SanPham where gia > 200 and gia < 1000;
--select * from SanPham where gia > 200 or donvi like N'Chiếc';
--select * from SanPham where id  = 1   or id = 3;
--select * from SanPham where id in(1,3,5,6,7,8,9);
-- tim kiem
--select * from SanPham where ten like 'Máy%';-- start of M
--select * from SanPham where ten like '%mới';-- end of
--select * from SanPham where ten like '%t%';-- contain 
--	sap xep
--select * from SanPham order by gia asc;
--select * from SanPham order by gia desc;
--lay theo so luong
--select top 1 * from SanPham order by gia desc;
--select top 50 percent * from SanPham order by gia desc;

--select top 1 * from DonHang order by ma desc;
--thong ke
--select count(*) from DonHang;
--select count(*) from SanPham;

--select sum(tongtien) as doanhthu from DonHang;

--select avg(tongtien) as trungbinh from DonHang;

--select * from DonHang;

--select count(*),dienthoai from DonHang group by dienthoai;

select ten from KhachHang;
select ten from SanPham;
select ma from DonHang;
select * from KhachHang order by ten asc;
select * from SanPham order by gia desc;
select count(*) from KhachHang;
select count(*) from SanPham;
select sum(tongtien) from DonHang group by ma;




