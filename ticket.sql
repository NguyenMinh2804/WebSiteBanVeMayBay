Create database VeMayBay
go 
use VeMayBay
go

Create table loaiVe
(
	IDLoaiVe int identity (1,1),
	TenLoaiVe nvarchar (20)
)
go
Create table hangGhe 
(
	IDHangGhe int identity (1,1),
	TenHangGhe nvarchar (20)
)
go
Create table HangHangKhong
(
	IDHang char(16) primary key,
	TenHangHangKhong nvarchar (200),
)
go
Create table loaiMayBay
(
	IDLoaiMayBay char(16) primary key,
	TenMayBay nvarchar (200),
	SoGhe int,
)
go
Create table ThanhPho
(
	IDThanhPho char(10) not null primary key,
	TenThanhPho nvarchar (255),
	QuocGia nvarchar (255),
)
go
Create table SanBay
(	
	IDSanBay char(10) not null,
	IDThanhPho char(10) ,
	TenSanBay nvarchar (255),
	CONSTRAINT fk_IDThanhPho FOREIGN KEY (IDThanhPho) REFERENCES thanhPho (idThanhPho)
)
go
Create table hanhKhach
(
	IdHk int identity (1,1) not null primary key,
	tenHk nvarchar (255),
	sdt char(12),
	email char(255),
)
Create table chanBay
(
IDChan int identity (1,1) not null primary key,
IDHang Char(16) not null,
IDLoaiMayBay char(16) not null,
DiemDi char (10) not null,
SanBayDi char (10) not null,
SanBayDen char (10) not null,
DiemDen char (10) not null,
NgayDi datetime not null,
ThoiGianBay float not null,
NgayDen datetime not null,
HanhLy float,
TongSlVe int,
CONSTRAINT fk_idhang FOREIGN KEY (IDHang) REFERENCES HangHangKhong (IDHang),
CONSTRAINT fk_LoaiMayBay FOREIGN KEY (IDLoaiMayBay) REFERENCES loaiMayBay (IDLoaiMayBay),

)
go

Create table Ve
(
IDVe int identity (1,1),
loaiVe nvarchar,
IDNguoiMua int,
IDChan int,
tenHk nvarchar(255),
ngaySinh int,
thangSinh int,
namSinh int,
gioiTinh int,
hangVe nvarchar,
HangGhe varchar,
SoGhe varchar(20),
GiaVe numeric(16,2),
Thue numeric (16,2),
GiaDichVu numeric (16,2),
GiaTong numeric (16,2),
CONSTRAINT fk_idhang_ve FOREIGN KEY (IDChan) REFERENCES ChanBay(IDChan),
CONSTRAINT fk_IDNguoiMua FOREIGN KEY (IDNguoiMua) REFERENCES hanhKhach (IdHk),
)
go
insert into ThanhPho values ('HN',N'Hà Nội',N'Việt Nam')
insert into ThanhPho values ('HP',N'Hải Phòng',N'Việt Nam')
insert into ThanhPho values ('ĐB',N'Điện Biên',N'Việt Nam')
insert into ThanhPho values ('TH',N'Thanh Hóa',N'Việt Nam')
insert into ThanhPho values ('NA',N'Nghệ An',N'Việt Nam')
insert into ThanhPho values ('QB',N'Quảng Bình',N'Việt Nam')
insert into ThanhPho values ('TTH',N'Thừa Thiên-Huế',N'Việt Nam')
insert into ThanhPho values ('QN',N'Quảng Nam',N'Việt Nam')
insert into ThanhPho values ('BĐ',N'Bình Định',N'Việt Nam')
insert into ThanhPho values ('PY',N'Phú Yên',N'Việt Nam')
insert into ThanhPho values ('KH',N'Khánh Hòa',N'Việt Nam')
insert into ThanhPho values ('ĐL',N'ĐắK Lắk',N'Việt Nam')
insert into ThanhPho values ('LĐ',N'Lâm Đồng',N'Việt Nam')
insert into ThanhPho values ('GL',N'Gia Lai',N'Việt Nam')
insert into ThanhPho values ('ĐN',N'Đà Nẵng',N'Việt Nam')
insert into ThanhPho values ('HCM',N'TP HCM',N'Việt Nam')
insert into ThanhPho values ('CM',N'Cà Mau',N'Việt Nam')
insert into ThanhPho values ('BV',N'Bà Rịa-Vũng Tàu',N'Việt Nam')
insert into ThanhPho values ('CT',N'Cần Thơ',N'Việt Nam')
insert into ThanhPho values ('KG',N'Kiên Giang',N'Việt Nam')
insert into ThanhPho values ('QNI',N'Quảng Ninh',N'Việt Nam')
go
insert into loaiVe values (N'Người lớn')
insert into loaiVe values (N'Trẻ em')
insert into loaiVe values (N'Trẻ sơ sinh')
go
Insert into hangGhe values (N'Phổ thông')
Insert into hangGhe values (N'Phổ thông đặc biệt')
Insert into hangGhe values (N'Thương gia')
Insert into hangGhe values (N'Hạng nhất')
go
Insert into SanBay values ('HAN','HN',N'Sân bay Quốc tế Nội Bài')
Insert into SanBay values ('HPH','HP',N'Sân bay Quốc tế Cái Bi')
Insert into SanBay values ('DIN','ĐB',N'Sân bay Điện Biên Phủ')
Insert into SanBay values ('THD','TH',N'Thọ Xuân')
Insert into SanBay values ('VII','NA',N'Sân bay Quốc tế Vinh')
Insert into SanBay values ('VDH','QB',N'Sân bay Đồng Hới')
Insert into SanBay values ('HUI','TTH',N'Sân bay Quốc tế Phú Bài')
Insert into SanBay values ('DAD','ĐN',N'Sân bay quốc tế Đà Nẵng')
Insert into SanBay values ('VCL','QN',N'Sân bay quốc tế Chu Lai')
Insert into SanBay values ('UIH','BĐ',N'Sân bay Phù Cát')
Insert into SanBay values ('TBB','ĐN',N'Sân bay Tuy Hòa')
Insert into SanBay values ('CXR','QN',N'Sân bay quốc tế Cam Ranh')
Insert into SanBay values ('BMV','BĐ',N'Sân bay Buôn Ma Thuột ')
Insert into SanBay values ('DLI','LĐ',N'Sân bay Buôn Ma Thuột')
Insert into SanBay values ('VCL','LĐ',N'Sân bay Liên Khương')
Insert into SanBay values ('PXU','GL',N'Sân bay Pleiku')
Insert into SanBay values ('SGN','HCM',N'Sân bay Quốc tế Tân Sơn Nhất')
Insert into SanBay values ('CAH','CM',N'Sân bay Cà Mau')
Insert into SanBay values ('VCS','BV',N'Sân bay Côn Đảo')
Insert into SanBay values ('VCA','CT',N'Sân bay quốc tế Cần Thơ')
Insert into SanBay values ('VKG','KG',N'Sân bay Rạch Giá')
Insert into SanBay values ('PQC','KG',N'Sân bay Quốc tế Phú Quốc')
Insert into SanBay values ('VDP','QN',N'Sân bay Quốc tế Vân Đồn')
go
Insert into HangHangKhong values ('VNA','Vietnam Airlines')
Insert into HangHangKhong values ('VJ','Vietjet Air')
Insert into HangHangKhong values ('BL','Jetstar Pacific Airlines')
Insert into HangHangKhong values ('QH','Bamboo Airways')
go
insert into loaiMayBay values ('Boeing 707','Boeing 707',200)
insert into loaiMayBay values ('Boeing 717','Boeing 717',200)
insert into loaiMayBay values ('Boeing 720','Boeing 720',200)
insert into loaiMayBay values ('Boeing 727','Boeing 727',200)
insert into loaiMayBay values ('Boeing 737','Boeing 737',200)
insert into loaiMayBay values ('Boeing 747','Boeing 747',200)
insert into loaiMayBay values ('Airbus A300','Airbus A300',200)
insert into loaiMayBay values ('Airbus A310','Airbus A310',200)
insert into loaiMayBay values ('Airbus A318','Airbus A318',200)
go

insert into chanBay values ('VNA','Boeing 707','HN','HAN','SGN','HCM','2020/08/30',2.5,'2020/09/02','12','200')
insert into chanBay values ('VJ','Boeing 717','HN','HAN','SGN','HCM','2020/08/30',2.5,'2020/02/09','12','200')
insert into chanBay values ('BL','Airbus A300','HN','HAN','SGN','HCM','2020/08/30',2.5,'2020/02/09','12','200')
insert into chanBay values ('QH','Boeing 737','HN','HAN','SGN','HCM','2020/08/30',2.5,'2020/02/09','12','200')
insert into chanBay values ('VNA','Airbus A318','HN','HAN','SGN','HCM','2020/08/30',2.5,'2020/02/09','12','200')
go
alter PROC Sreach_Tikect
@DiemDi char(10)=null,
@DiemDen char(10)=null,
@NgayDi datetime2=null,
@NgayVe datetime2=null,
@SLNguoiLon int=null,
@SlTreEm int=null,
@SLTreSs INT=null
AS 
BEGIN
	Select c.TenHangHangKhong,d.TenMayBay,(select top 1 TenThanhPho from ThanhPho where b.DiemDi=ThanhPho.IDThanhPho ) as diemDi
	,(select top 1 TenSanBay from SanBay c where b.SanBayDi=c.IDSanBay) as sanBayDi,(select top 1 TenThanhPho from ThanhPho where b.DiemDen=ThanhPho.IDThanhPho ) as diemDen
	,(select top 1 TenSanBay from SanBay c where b.SanBayDen=c.IDSanBay)as sanBayDen, NgayDi,ThoiGianBay,NgayDen,HanhLy,TongSlVe
	from chanBay b left join hangHangKhong c on b.IDHang=c.IDHang left join loaiMayBay d on b.IDLoaiMayBay=d.IDLoaiMayBay  
	where b.DiemDi = @DiemDi and b.DiemDen =@DiemDen and b.NgayDi =@NgayDi and b.TongSlVe>=(@SLNguoiLon+@SlTreEm)
END

go
exec Sreach_Tikect 'HN','HCM','2020-08-30 00:00:00.0000000','2020-02-09 00:00:00.0000000',0,0,0
