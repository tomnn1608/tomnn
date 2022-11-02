insert into KhachHang(Ten,CMT,DiaChi)
values(N'Nguyễn Nguyệt Nga',123456789,N'Hà Nội')

insert into SoThueBao(SoTB,LoaiTB,NgayDangKy,SoCMT)
values(123456789,N'Trả trước','2002-12-12',123456789)

delete SoThueBao;
delete KhachHang;

select * from KhachHang;
select * from SoThueBao;

select * from SoThueBao where SoTB like 123456789;
select * from KhachHang where CMT like 123456789;
select SoTB from SoThueBao where SoCMT like 123456789;
select SoTB from SoThueBao where NgayDangKy like '2002-12-12';
select SoTB from SoThueBao where SoCMT in
(select CMT from KhachHang where DiaChi like N'Hà Nội');

select count(*) from KhachHang;
select count(*) from SoThueBao;
select count(*) from SoThueBao where NgayDangKy like '2002-12-12';

select * from KhachHang a
inner join SoThueBao b on a.CMT = b.SoCMT;



