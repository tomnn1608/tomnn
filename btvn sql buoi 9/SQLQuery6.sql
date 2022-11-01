   insert into HANG(MaSoHang,TenHang,DiaChi,DienThoai)
values('123','ASUS','USA',983232)

select * from HANG;

   insert into DANHSACHSANPHAM(TenHang,MoTa,DonVi,Gia,SoLuong)
values(N'Máy tính t450',N'Máy nhập cũ',N'Chiếc','1000',10),
      (N'Điện thoại nokia 5670',N'Điện thoại đang hot',N'Chiếc','200',200),
	  (N'Máy in SamSung 450',N'Máy in đang loại bình',N'Chiếc','100',10)

select * from DANHSACHSANPHAM;

delete Hang;
delete DANHSACHSANPHAM;

select TenHang from HANG;
select TenHang from DANHSACHSANPHAM;

select TenHang from HANG order by TenHang desc;
select * from DANHSACHSANPHAM order by gia desc;
select * from HANG;
select * from DANHSACHSANPHAM where SoLuong < 11;

select count(*) from HANG;
select count(*) from DANHSACHSANPHAM;
select sum(SoLuong) from DANHSACHSANPHAM group by MaSoHang ;


