create database anntpd01181_as
go
use anntpd01181_as
go



CREATE TABLE ChiTietHoaDon (
    Masanpham  nchar(5)  NOT NULL,
    Mahoadon nchar(5)  NOT NULL,
    Soluong int  NOT NULL,
    Dongia money  NOT NULL,
    HoaDon_Mahoadon nchar(5)  NOT NULL,
    SanPham_Masanpham  nchar(5)  NOT NULL
)
;


CREATE TABLE HoaDon (
    Mahoadon nchar(5)  NOT NULL,
    Makhachhang nchar(5)  NOT NULL,
    Ngaylap date  NOT NULL,
    KhachHang_Makhachhang nchar(5)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (Mahoadon)
)
;


CREATE TABLE KhachHang (
    Makhachhang nchar(5)  NOT NULL,
    Tenkhachhang varchar(50)  NOT NULL,
    Diachi varchar(50)  NOT NULL,
    Sodienthoai int  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (Makhachhang)
)
;

 
CREATE TABLE LoaiSanPham  (
    Maloaisanpham nchar(5)  PRIMARY KEY ,
    Tenloaisanpham nvarchar(200)  NOT NULL
)


CREATE TABLE SanPham (
    Masanpham  nchar(5)  NOT NULL,
    Maloaisanpham nchar(5)  NOT NULL,
    Tensanpham  nvarchar(50)  NOT NULL,
    LoaiSanPham  nchar(5)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (Masanpham )
)
;






ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_HoaDon 
    FOREIGN KEY (HoaDon_Mahoadon)
    REFERENCES HoaDon (Mahoadon)
;


ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_SanPham 
    FOREIGN KEY (SanPham_Masanpham )
    REFERENCES SanPham (Masanpham )
;


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang 
    FOREIGN KEY (KhachHang_Makhachhang)
    REFERENCES KhachHang (Makhachhang)
;



ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham  
    FOREIGN KEY (Maloaisanpham)
    REFERENCES LoaiSanPham  (Maloaisanpham)
;



-- thêm giá trị.

insert into ChiTietHoaDon values ('IDSp1','IDHd1','4','1200000','Hd1','Sp1')
insert into ChiTietHoaDon values ('IDSp2','IDHd2','2','400000','Hd2','Sp2')
insert into ChiTietHoaDon values ('IDSp3','IDHd3','11','750000','Hd3','Sp3')
insert into ChiTietHoaDon values ('IDSp4','IDHd4','5','50000','Hd4','Sp4')
insert into ChiTietHoaDon values ('IDSp5','IDHd5','15','160000','Hd5','Sp5')

insert into HoaDon values ('IDHd1','IDKh1','11/4/2015','Kh1')
insert into HoaDon values ('IDHd2','IDKh2','5/22/2016','Kh2')
insert into HoaDon values ('IDHd3','IDKh3','1/26/2012','Kh3')
insert into HoaDon values ('IDHd4','IDKh4','5/6/2013','Kh4')
insert into HoaDon values ('IDHd5','IDKh5','4/23/2016','Kh5')

insert into KhachHang values ('IDKh1','Ngo Truong An','Hoa Khanh','0906869541')
insert into KhachHang values ('IDKh2','NguyenVuChieu','Tam Ky','01698979263')
insert into KhachHang values ('IDKh3','TranLeHaiQuan','Hoi An','0905555845')
insert into KhachHang values ('IDKh4','Nguyen Duc Hau','Quang Ngai','0166585948')
insert into KhachHang values ('IDKh5','Vo Hung','Hue','01525869345')

insert into LoaiSanPham values ('IDLSP1','Do Cong so')
insert into LoaiSanPham values ('IDLSP2','Ruu Ngoai')
insert into LoaiSanPham values ('IDLSP3','Kem Duong Da')
insert into LoaiSanPham values ('IDLSP4','Son Moi')
insert into LoaiSanPham values ('IDLSP5','Giay Da')

insert into SanPham values ('IDSp1','IDLSP1','Do Cong so','L1')
insert into SanPham values ('IDSp2','IDLSP2','Ruu Ngoai','L2')
insert into SanPham values ('IDSp3','IDLSP3','Kem Duong Da','L3')
insert into SanPham values ('IDSp4','IDLSP4','Son Moi','L4')
insert into SanPham values ('IDSp5','IDLSP5','Giay Da','L5')