Create database QLHangHoa
CREATE TABLE HangHoa (
    MaHH INT PRIMARY KEY,
    TenHH VARCHAR(255) NOT NULL,
    DonGia DECIMAL(10, 2) NOT NULL
);
CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    TenNV VARCHAR(255) NOT NULL,
    NamSinh DATE,
    QueQuan VARCHAR(255)
);
CREATE TABLE HoaDon (
    MaHD INT PRIMARY KEY,
    NgayLap DATE NOT NULL,
    MaNV INT,
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
CREATE TABLE ChiTietHoaDon (
    MaHD INT,
    MaHH INT,
    SoLuong INT,
    PRIMARY KEY (MaHD, MaHH),
    FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    FOREIGN KEY (MaHH) REFERENCES HangHoa(MaHH)
);

INSERT INTO HangHoa (MaHH, TenHH, DonGia)
VALUES
    (1, 'Laptop', 15000000),
    (2, 'Dien thoai', 8000000),
    (3, 'Tivi', 12000000),
    (4, 'May tinh bang', 6000000),
    (5, 'May anh', 5000000);

INSERT INTO NhanVien (MaNV, TenNV, NamSinh, QueQuan)
VALUES
    (105, 'Nguyen Van H', '1990-01-15', 'Da Nang'),
    (102, 'Tran Thi B', '1985-05-20', 'Ho Chi Minh'),
    (103, 'Le Van C', '1995-12-10', 'Da Nang'),
    (104, 'Pham Thi D', '1992-08-25', 'Hai Phong');

	INSERT INTO HoaDon (MaHD, NgayLap, MaNV)
VALUES
    (1001, '2023-07-15', 101),
    (1002, '2023-07-20', 102),
    (1003, '2023-07-25', 103),
    (1004, '2023-07-26', 104);
INSERT INTO ChiTietHoaDon (MaHD, MaHH, SoLuong)
VALUES
    (1001, 1, 2),
    (1001, 3, 1),
    (1002, 2, 3),
    (1003, 4, 1),
    (1004, 5, 2),
    (1004, 1, 1);

1. có bao nhiêu nhân viên quê quán Nam Định:
SELECT COUNT(MaNV)
From NhanVien
Where QueQuan='Nam'
select TenHH
From HangHoa
Where DonGia >= ALL(select DonGia
From HangHoa)

select sum(soluong)
from ChiTietHoaDon
where MaHH=2 and MaHD in (select MaHD from HoaDon where NgayLap='2023-07-20')


select H.MaHH,H.TenHH,sum(soluong*DonGia) as DoanhThu
From HangHoa H join ChiTietHoaDon C on H.MaHH=C.MaHH
Join HoaDon HD on HD.MaHD=C.MaHD
Where year(HD.NgayLap)=2023
group by H.MaHH,H. 

Update HangHoa
Set DonGia=1.1*DonGia
where MaHH=5

select *
from HangHoa