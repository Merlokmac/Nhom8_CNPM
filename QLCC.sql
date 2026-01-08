-- CREATE DATABASE apartment_management;
-- GO

-- use apartment_management

-- INSERT INTO fees (type, price_per_unit)
-- VALUES
-- ('WATER', 7000),
-- ('ELECTRICITY', 3500),
-- ('SERVICE', 500000),
-- ('VEHICLE', 100000);

-- INSERT INTO apartments
-- (apartment_id, apartment_type, floor, area, occupants, is_occupied,
--  water_usage, electricity_usage, service_usage, vehicle_count, total, owner)
-- VALUES

-- -- TẦNG 1
-- ('A101','MEDIUM',1,65,3,1,12,180,1500000,1,2314000, N'Nguyễn Văn Hùng'),
-- ('A102','SMALL',1,45,2,1,10,150,1000000,1,1695000, N'Lê Quốc Bảo'),
-- ('A103','LARGE',1,90,4,1,18,320,2000000,2,3356000, N'Trần Văn Long'),
-- ('A104','SMALL',1,45,1,1,8,120,500000,0,1004000, N'Hoàng Văn Phúc'),
-- ('A105','MEDIUM',1,65,2,1,11,170,1000000,1,1717000, N'Phạm Văn Hải'),

-- -- TẦNG 2
-- ('A201','LARGE',2,90,4,1,19,340,2000000,2,3423000, N'Phạm Văn Thành'),
-- ('A202','SMALL',2,45,2,1,9,140,1000000,1,1615000, N'Võ Đức Hiếu'),
-- ('A203','MEDIUM',2,65,3,1,13,210,1500000,1,2415000, N'Trịnh Văn Nam'),
-- ('A204','SMALL',2,45,1,1,8,130,500000,0,1023000, N'Bùi Quang Vinh'),
-- ('A205','MEDIUM',2,65,2,1,11,160,1000000,1,1683000, N'Đỗ Văn Khoa'),

-- -- TẦNG 3
-- ('A301','LARGE',3,90,4,1,20,350,2000000,2,3475000, N'Lê Văn Phúc'),
-- ('A302','MEDIUM',3,65,3,1,14,220,1500000,1,2448000, N'Nguyễn Hữu Lộc'),
-- ('A303','SMALL',3,45,2,1,10,150,1000000,1,1695000, N'Hoàng Tú Anh'),
-- ('A304','SMALL',3,45,1,1,8,120,500000,0,1004000, N'Phạm Quốc Đạt'),
-- ('A305','LARGE',3,90,4,1,19,330,2000000,2,3409000, N'Đặng Văn Hùng'),

-- -- TẦNG 4
-- ('A401','LARGE',4,90,4,1,18,300,2000000,2,3276000, N'Trần Văn Bình'),
-- ('A402','MEDIUM',4,65,3,1,13,210,1500000,1,2415000, N'Phạm Quang Huy'),
-- ('A403','SMALL',4,45,2,1,10,150,1000000,1,1695000, N'Nguyễn Văn Lâm'),
-- ('A404','SMALL',4,45,0,0,0,0,0,0,0, 'Administrator'),
-- ('A405','LARGE',4,90,4,1,19,330,2000000,2,3409000, N'Bùi Văn Phương'),

-- -- TẦNG 5
-- ('A501','LARGE',5,90,4,1,20,340,2000000,2,3423000, N'Vũ Văn Thành'),
-- ('A502','MEDIUM',5,65,3,1,14,220,1500000,1,2448000, N'Lê Quang Hoàng'),
-- ('A503','SMALL',5,45,1,1,8,130,500000,0,1023000, N'Đặng Văn Khôi'),
-- ('A504','SMALL',5,45,2,1,10,150,1000000,1,1695000, N'Hoàng Tuấn Anh'),
-- ('A505','LARGE',5,90,4,1,19,330,2000000,2,3409000, N'Đỗ Văn Hải'),

-- -- TẦNG 6
-- ('A601','LARGE',6,90,4,1,20,350,2000000,2,3475000, N'Trần Văn Nam'),
-- ('A602','MEDIUM',6,65,3,1,14,220,1500000,1,2448000, N'Phạm Quang Hùng'),
-- ('A603','SMALL',6,45,1,1,8,120,500000,0,1004000, N'Bùi Mạnh Tuấn'),
-- ('A604','SMALL',6,45,2,1,10,150,1000000,1,1695000, N'Nguyễn Hoàng Phúc'),
-- ('A605','LARGE',6,90,4,1,19,330,2000000,2,3409000, N'Đinh Văn Hùng'),

-- -- TẦNG 7
-- ('A701','LARGE',7,90,4,1,20,340,2000000,2,3423000, N'Nguyễn Văn Phát'),
-- ('A702','MEDIUM',7,65,3,1,14,220,1500000,1,2448000, N'Lê Quang Vinh'),
-- ('A703','SMALL',7,45,1,1,8,130,500000,0,1023000, N'Bùi Hoàng Nam'),
-- ('A704','SMALL',7,45,0,0,0,0,0,0,0, 'Administrator'),
-- ('A705','MEDIUM',7,65,0,0,0,0,0,0,0, 'Administrator'),

-- -- TẦNG 8
-- ('A801','LARGE',8,90,4,1,20,350,2000000,2,3475000, N'Trần Văn Tuấn'),
-- ('A802','MEDIUM',8,65,3,1,14,220,1500000,1,2448000, N'Phan Quang Hiếu'),
-- ('A803','SMALL',8,45,1,1,8,120,500000,0,1004000, N'Đỗ Quốc Hùng'),
-- ('A804','SMALL',8,45,2,1,10,150,1000000,1,1695000, N'Vũ Mạnh Cường'),
-- ('A805','SMALL',8,45,0,0,0,0,0,0,0, 'Administrator'),

-- -- TẦNG 9
-- ('A901','LARGE',9,90,4,1,20,340,2000000,2,3423000, N'Nguyễn Văn Khoa'),
-- ('A902','SMALL',9,45,2,1,10,150,1000000,1,1695000, N'Hồ Văn Thắng'),
-- ('A903','SMALL',9,45,1,1,8,120,500000,0,1004000, N'Đặng Quốc Việt'),
-- ('A904','MEDIUM',9,65,0,0,0,0,0,0,0, 'Administrator'),
-- ('A905','MEDIUM',9,65,0,0,0,0,0,0,0, 'Administrator'),

-- -- TẦNG 10
-- ('A1001','LARGE',10,90,4,1,20,350,2000000,2,3475000, N'Trần Văn Tiến'),
-- ('A1002','MEDIUM',10,65,3,1,14,220,1500000,1,2448000, N'Lý Văn Phúc'),
-- ('A1003','SMALL',10,45,1,1,8,120,500000,0,1004000, N'Vũ Quang Hiếu'),
-- ('A1004','MEDIUM',10,65,0,0,0,0,0,0,0, 'Administrator'),
-- ('A1005','MEDIUM',10,65,0,0,0,0,0,0,0, 'Administrator');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- (
--  'admin',
--  '$2a$10$AUm1yBdLo0KO9X9Mgg/Rt.S6pxyK1OwnIte0WkYxxw.xGMzsPh4hO',
--  'Administrator',
--  'admin@gmail.com',
--  '0900000000',
--  '000000001',
--  'ADMIN',
--  'A101'
-- );

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A101 – Gia đình Nguyễn (3 người)
-- ('nguyen_van_hung',  '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Văn Hùng',
--  'hung.a101@gmail.com', '0901000001', '100001', 'USER', 'A101'),

-- ('tran_thi_mai', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Thị Mai',
--  'mai.a101@gmail.com', '0901000002', '100002', 'USER', 'A101'),

-- ('nguyen_minh_an', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Minh An',
--  'an.a101@gmail.com', '0901000003', '100003', 'USER', 'A101'),

-- -- A102 – Vợ chồng Lê (2 người)
-- ('le_quoc_bao', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Quốc Bảo',
--  'bao.a102@gmail.com', '0901000004', '100004', 'USER', 'A102'),

-- ('pham_thi_hoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Thị Hoa',
--  'hoa.a102@gmail.com', '0901000005', '100005', 'USER', 'A102'),

-- -- A103 – Gia đình Trần (4 người)
-- ('tran_van_long', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Văn Long',
--  'long.a103@gmail.com', '0901000006', '100006', 'USER', 'A103'),

-- ('do_thi_lan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Thị Lan',
--  'lan.a103@gmail.com', '0901000007', '100007', 'USER', 'A103'),

-- ('tran_minh_khoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Minh Khoa',
--  'khoa.a103@gmail.com', '0901000008', '100008', 'USER', 'A103'),

-- ('tran_minh_khanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Minh Khánh',
--  'khanh.a103@gmail.com', '0901000009', '100009', 'USER', 'A103'),

-- -- A104 – Độc thân (1 người)
-- ('hoang_van_phuc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Hoàng Văn Phúc',
--  'phuc.a104@gmail.com', '0901000010', '100010', 'USER', 'A104'),

-- -- A105 – Mẹ + con (2 người)
-- ('pham_van_hai', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Văn Hải',
--  'hai.a105@gmail.com', '0901000011', '100011', 'USER', 'A105'),

-- ('pham_minh_tuan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Minh Tuấn',
--  'tuan.a105@gmail.com', '0901000012', '100012', 'USER', 'A105');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A201 – Gia đình Phạm (4 người)
-- ('pham_van_thanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Văn Thành',
--  'thanh.a201@gmail.com', '0902000001', '200001', 'USER', 'A201'),

-- ('nguyen_thi_thao', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Thị Thảo',
--  'thao.a201@gmail.com', '0902000002', '200002', 'USER', 'A201'),

-- ('pham_minh_duy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Minh Duy',
--  'duy.a201@gmail.com', '0902000003', '200003', 'USER', 'A201'),

-- ('pham_minh_hang', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Minh Hằng',
--  'hang.a201@gmail.com', '0902000004', '200004', 'USER', 'A201'),

-- -- A202 – Vợ chồng Võ (2 người)
-- ('vo_duc_hieu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Võ Đức Hiếu',
--  'hieu.a202@gmail.com', '0902000005', '200005', 'USER', 'A202'),

-- ('le_thi_hong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Thị Hồng',
--  'hong.a202@gmail.com', '0902000006', '200006', 'USER', 'A202'),

-- -- A203 – Gia đình Trịnh (3 người)
-- ('trinh_van_nam', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trịnh Văn Nam',
--  'nam.a203@gmail.com', '0902000007', '200007', 'USER', 'A203'),

-- ('pham_thi_tuyet', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Thị Tuyết',
--  'tuyet.a203@gmail.com', '0902000008', '200008', 'USER', 'A203'),

-- ('trinh_minh_kien', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trịnh Minh Kiên',
--  'kien.a203@gmail.com', '0902000009', '200009', 'USER', 'A203'),

-- -- A204 – Độc thân (1 người)
-- ('bui_quang_vinh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Bùi Quang Vinh',
--  'vinh.a204@gmail.com', '0902000010', '200010', 'USER', 'A204'),

-- -- A205 – Mẹ + con (2 người)
-- ('do_van_khoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Văn Khoa',
--  'khoa.a205@gmail.com', '0902000011', '200011', 'USER', 'A205'),

-- ('do_minh_tien', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Minh Tiến',
--  'tien.a205@gmail.com', '0902000012', '200012', 'USER', 'A205');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A301 – Gia đình Lê (4 người)
-- ('le_van_phuc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Văn Phúc',
--  'phuc.a301@gmail.com', '0903000001', '300001', 'USER', 'A301'),

-- ('tran_thi_dieu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Thị Diệu',
--  'dieu.a301@gmail.com', '0903000002', '300002', 'USER', 'A301'),

-- ('le_minh_quan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Minh Quân',
--  'quan.a301@gmail.com', '0903000003', '300003', 'USER', 'A301'),

-- ('le_minh_ngoc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Minh Ngọc',
--  'ngoc.a301@gmail.com', '0903000004', '300004', 'USER', 'A301'),

-- -- A302 – Gia đình Nguyễn (3 người)
-- ('nguyen_huu_loc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Hữu Lộc',
--  'loc.a302@gmail.com', '0903000005', '300005', 'USER', 'A302'),

-- ('pham_thi_lien', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Thị Liên',
--  'lien.a302@gmail.com', '0903000006', '300006', 'USER', 'A302'),

-- ('nguyen_gia_bao', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Gia Bảo',
--  'bao.a302@gmail.com', '0903000007', '300007', 'USER', 'A302'),

-- -- A303 – Vợ chồng trẻ (2 người)
-- ('hoang_tu_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Hoàng Tú Anh',
--  'anh.a303@gmail.com', '0903000008', '300008', 'USER', 'A303'),

-- ('vu_thi_thu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Vũ Thị Thu',
--  'thu.a303@gmail.com', '0903000009', '300009', 'USER', 'A303'),

-- -- A304 – Độc thân (1 người)
-- ('pham_quoc_dat', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Quốc Đạt',
--  'dat.a304@gmail.com', '0903000010', '300010', 'USER', 'A304'),

-- -- A305 – Gia đình Đặng (4 người)
-- ('dang_van_hung', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đặng Văn Hùng',
--  'hung.a305@gmail.com', '0903000011', '300011', 'USER', 'A305'),

-- ('ngo_thi_hanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Ngô Thị Hạnh',
--  'hanh.a305@gmail.com', '0903000012', '300012', 'USER', 'A305'),

-- ('dang_minh_duc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đặng Minh Đức',
--  'duc.a305@gmail.com', '0903000013', '300013', 'USER', 'A305'),

-- ('dang_minh_khoi', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đặng Minh Khôi',
--  'khoi.a305@gmail.com', '0903000014', '300014', 'USER', 'A305');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A401 – Gia đình Trần (4 người)
-- ('tran_van_binh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Văn Bình',
--  'binh.a401@gmail.com', '0904000001', '400001', 'USER', 'A401'),

-- ('le_thi_hoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Thị Hoa',
--  'hoa.a401@gmail.com', '0904000002', '400002', 'USER', 'A401'),

-- ('tran_minh_hieu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Minh Hiếu',
--  'hieu.a401@gmail.com', '0904000003', '400003', 'USER', 'A401'),

-- ('tran_minh_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Minh Anh',
--  'anh.a401@gmail.com', '0904000004', '400004', 'USER', 'A401'),

-- -- A402 – Gia đình Phạm (3 người)
-- ('pham_quang_huy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Quang Huy',
--  'huy.a402@gmail.com', '0904000005', '400005', 'USER', 'A402'),

-- ('do_thi_tuyet', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Thị Tuyết',
--  'tuyet.a402@gmail.com', '0904000006', '400006', 'USER', 'A402'),

-- ('pham_gia_khanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Gia Khánh',
--  'khanh.a402@gmail.com', '0904000007', '400007', 'USER', 'A402'),

-- -- A403 – 2 người (anh em ruột)
-- ('nguyen_van_lam', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Văn Lâm',
--  'lam.a403@gmail.com', '0904000008', '400008', 'USER', 'A403'),

-- ('nguyen_van_long', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Văn Long',
--  'long.a403@gmail.com', '0904000009', '400009', 'USER', 'A403'),

-- -- A404 – CĂN TRỐNG (không insert)

-- -- A405 – Gia đình Bùi (4 người)
-- ('bui_van_phuong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Bùi Văn Phương',
--  'phuong.a405@gmail.com', '0904000010', '400010', 'USER', 'A405'),

-- ('pham_thi_thao', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Thị Thảo',
--  'thao.a405@gmail.com', '0904000011', '400011', 'USER', 'A405'),

-- ('bui_minh_tuan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Bùi Minh Tuấn',
--  'tuan.a405@gmail.com', '0904000012', '400012', 'USER', 'A405'),

-- ('bui_minh_chau', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Bùi Minh Châu',
--  'chau.a405@gmail.com', '0904000013', '400013', 'USER', 'A405');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A501 – Gia đình Vũ (4 người)
-- ('vu_van_thanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Vũ Văn Thành',
--  'thanh.a501@gmail.com', '0905000001', '500001', 'USER', 'A501'),

-- ('nguyen_thi_lan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Thị Lan',
--  'lan.a501@gmail.com', '0905000002', '500002', 'USER', 'A501'),

-- ('vu_duc_minh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Vũ Đức Minh',
--  'minh.a501@gmail.com', '0905000003', '500003', 'USER', 'A501'),

-- ('vu_duc_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Vũ Đức Anh',
--  'anh.a501@gmail.com', '0905000004', '500004', 'USER', 'A501'),

-- -- A502 – Gia đình Lê (3 người)
-- ('le_quang_hoang', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Quang Hoàng',
--  'hoang.a502@gmail.com', '0905000005', '500005', 'USER', 'A502'),

-- ('pham_thi_huong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Thị Hương',
--  'huong.a502@gmail.com', '0905000006', '500006', 'USER', 'A502'),

-- ('le_gia_bao', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Gia Bảo',
--  'bao.a502@gmail.com', '0905000007', '500007', 'USER', 'A502'),

-- -- A503 – Người độc thân
-- ('dang_van_khoi', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đặng Văn Khôi',
--  'khoi.a503@gmail.com', '0905000008', '500008', 'USER', 'A503'),

-- -- A504 – Vợ chồng trẻ (2 người)
-- ('hoang_tuan_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Hoàng Tuấn Anh',
--  'anh.a504@gmail.com', '0905000009', '500009', 'USER', 'A504'),

-- ('tran_thi_maihuong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Thị Mai Hương',
--  'huong.a504@gmail.com', '0905000010', '500010', 'USER', 'A504'),

-- -- A505 – Gia đình Đỗ (4 người)
-- ('do_van_hai', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Văn Hải',
--  'hai.a505@gmail.com', '0905000011', '500011', 'USER', 'A505'),

-- ('le_thi_ngoc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Thị Ngọc',
--  'ngoc.a505@gmail.com', '0905000012', '500012', 'USER', 'A505'),

-- ('do_minh_quan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Minh Quân',
--  'quan.a505@gmail.com', '0905000013', '500013', 'USER', 'A505'),

-- ('do_minh_khanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đỗ Minh Khánh',
--  'khanh.a505@gmail.com', '0905000014', '500014', 'USER', 'A505');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A601 – Gia đình Trần (4 người)
-- ('tran_van_nam', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Văn Nam',
--  'nam.a601@gmail.com', '0906000001', '600001', 'USER', 'A601'),

-- ('nguyen_thi_hoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Thị Hoa',
--  'hoa.a601@gmail.com', '0906000002', '600002', 'USER', 'A601'),

-- ('tran_duc_long', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Đức Long',
--  'long.a601@gmail.com', '0906000003', '600003', 'USER', 'A601'),

-- ('tran_duc_khoi', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Đức Khôi',
--  'khoi.a601@gmail.com', '0906000004', '600004', 'USER', 'A601'),

-- -- A602 – Gia đình Phạm (3 người)
-- ('pham_quang_hung', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Quang Hùng',
--  'huy.a602@gmail.com', '0906000005', '600005', 'USER', 'A602'),

-- ('vo_thi_thanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Võ Thị Thanh',
--  'thanh.a602@gmail.com', '0906000006', '600006', 'USER', 'A602'),

-- ('pham_gia_han', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Phạm Gia Hân',
--  'han.a602@gmail.com', '0906000007', '600007', 'USER', 'A602'),

-- -- A603 – Người độc thân
-- ('bui_manh_tuan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Bùi Mạnh Tuấn',
--  'tuan.a603@gmail.com', '0906000008', '600008', 'USER', 'A603'),

-- -- A604 – Vợ chồng (2 người)
-- ('nguyen_hoang_phuc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Nguyễn Hoàng Phúc',
--  'phuc.a604@gmail.com', '0906000009', '600009', 'USER', 'A604'),

-- ('tran_thi_kimngan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Trần Thị Kim Ngân',
--  'ngan.a604@gmail.com', '0906000010', '600010', 'USER', 'A604'),

-- -- A605 – Gia đình Đinh (4 người)
-- ('dinh_van_hung', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đinh Văn Hùng',
--  'hung.a605@gmail.com', '0906000011', '600011', 'USER', 'A605'),

-- ('le_thi_thuy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Lê Thị Thúy',
--  'thuy.a605@gmail.com', '0906000012', '600012', 'USER', 'A605'),

-- ('dinh_tien_dat', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đinh Tiến Đạt',
--  'dat.a605@gmail.com', '0906000013', '600013', 'USER', 'A605'),

-- ('dinh_tien_phat', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2', N'Đinh Tiến Phát',
--  'phat.a605@gmail.com', '0906000014', '600014', 'USER', 'A605');

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A701 – Gia đình Nguyễn (4 người)
-- ('nguyen_van_phat', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Văn Phát', 'phat.a701@gmail.com', '0907000001', '700001', 'USER', 'A701'),

-- ('tran_thi_hien', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Thị Hiền', 'hien.a701@gmail.com', '0907000002', '700002', 'USER', 'A701'),

-- ('nguyen_minh_khoi', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Minh Khôi', 'khoi.a701@gmail.com', '0907000003', '700003', 'USER', 'A701'),

-- ('nguyen_minh_chau', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Minh Châu', 'chau.a701@gmail.com', '0907000004', '700004', 'USER', 'A701'),

-- -- A702 – Gia đình Lê (3 người)
-- ('le_quang_vinh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lê Quang Vinh', 'vinh.a702@gmail.com', '0907000005', '700005', 'USER', 'A702'),

-- ('pham_thi_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phạm Thị Anh', 'anh.a702@gmail.com', '0907000006', '700006', 'USER', 'A702'),

-- ('le_gia_huy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lê Gia Huy', 'huy.a702@gmail.com', '0907000007', '700007', 'USER', 'A702'),

-- -- A703 – Độc thân (1 người)
-- ('bui_hoang_nam', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Bùi Hoàng Nam', 'nam.a703@gmail.com', '0907000008', '700008', 'USER', 'A703');

-- -- A704 – CĂN TRỐNG (không insert)
-- -- A705 – CĂN TRỐNG (không insert)

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A801 – Gia đình Trần (4 người)
-- ('tran_van_tuan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Văn Tuấn', 'tuan.a801@gmail.com', '0908000001', '800001', 'USER', 'A801'),

-- ('nguyen_thi_thanh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Thị Thanh', 'thanh.a801@gmail.com', '0908000002', '800002', 'USER', 'A801'),

-- ('tran_minh_huy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Minh Huy', 'huy.a801@gmail.com', '0908000003', '800003', 'USER', 'A801'),

-- ('tran_minh_ngoc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Minh Ngọc', 'ngoc.a801@gmail.com', '0908000004', '800004', 'USER', 'A801'),

-- -- A802 – Gia đình Phan (3 người)
-- ('phan_quang_hieu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phan Quang Hiếu', 'hieu.a802@gmail.com', '0908000005', '800005', 'USER', 'A802'),

-- ('le_thi_kim', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lê Thị Kim', 'kim.a802@gmail.com', '0908000006', '800006', 'USER', 'A802'),

-- ('phan_gia_khang', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phan Gia Khang', 'khang.a802@gmail.com', '0908000007', '800007', 'USER', 'A802'),

-- -- A803 – Độc thân (1 người)
-- ('do_quoc_hung', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Đỗ Quốc Hùng', 'hung.a803@gmail.com', '0908000008', '800008', 'USER', 'A803'),

-- -- A804 – Vợ chồng (2 người)
-- ('vu_manh_cuong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Vũ Mạnh Cường', 'cuong.a804@gmail.com', '0908000009', '800009', 'USER', 'A804'),

-- ('pham_thi_linh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phạm Thị Linh', 'linh.a804@gmail.com', '0908000010', '800010', 'USER', 'A804');

-- -- A805 – CĂN TRỐNG (không insert)

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A901 – Gia đình Nguyễn (4 người)
-- ('nguyen_van_khoa', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Văn Khoa', 'khoa.a901@gmail.com', '0909000001', '900001', 'USER', 'A901'),

-- ('pham_thi_hong', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phạm Thị Hồng', 'hong.a901@gmail.com', '0909000002', '900002', 'USER', 'A901'),

-- ('nguyen_minh_duc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Minh Đức', 'duc.a901@gmail.com', '0909000003', '900003', 'USER', 'A901'),

-- ('nguyen_minh_anh', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Minh Anh', 'anh.a901@gmail.com', '0909000004', '900004', 'USER', 'A901'),

-- -- A902 – Vợ chồng (2 người)
-- ('ho_van_thang', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Hồ Văn Thắng', 'thang.a902@gmail.com', '0909000005', '900005', 'USER', 'A902'),

-- ('le_thi_ngan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lê Thị Ngân', 'ngan.a902@gmail.com', '0909000006', '900006', 'USER', 'A902'),

-- -- A903 – Độc thân (1 người)
-- ('dang_quoc_viet', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Đặng Quốc Việt', 'viet.a903@gmail.com', '0909000007', '900007', 'USER', 'A903');

-- -- A904 – CĂN TRỐNG (không insert)
-- -- A905 – CĂN TRỐNG (không insert)

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- -- A1001 – Gia đình Trần (4 người)
-- ('tran_van_tien', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Văn Tiến', 'tien.a1001@gmail.com', '0910000001', '1000001', 'USER', 'A1001'),

-- ('nguyen_thi_cuc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Nguyễn Thị Cúc', 'cúc.a1001@gmail.com', '0910000002', '1000002', 'USER', 'A1001'),

-- ('tran_minh_quan', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Minh Quân', 'quan.a1001@gmail.com', '0910000003', '1000003', 'USER', 'A1001'),

-- ('tran_minh_chau', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Trần Minh chau', 'chau.a1001@gmail.com', '0910000004', '1000004', 'USER', 'A1001'),

-- -- A1002 – Gia đình Lý (3 người)
-- ('ly_van_phuc', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lý Văn Phúc', 'phuc.a1002@gmail.com', '0910000005', '1000005', 'USER', 'A1002'),

-- ('pham_thi_trang', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Phạm Thị Trang', 'trang.a1002@gmail.com', '0910000006', '1000006', 'USER', 'A1002'),

-- ('ly_gia_huy', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Lý Gia Huy', 'huy.a1002@gmail.com', '0910000007', '1000007', 'USER', 'A1002'),

-- -- A1003 – Người độc thân
-- ('vu_quang_hieu', '$2a$10$Q6guZEIIao5adT3r9zn6Q..WFott1EwJNmB3JtcoMUiGOn6bvULW2',
--  N'Vũ Quang Hiếu', 'hieu.a1003@gmail.com', '0910000008', '1000008', 'USER', 'A1003');

-- -- A1004 – CĂN TRỐNG (không insert)
-- -- A1005 – CĂN TRỐNG (không insert)

-- INSERT INTO notifications (title, content, type, created_at)
-- VALUES
-- (N'Bảo trì thang máy', N'Thang máy sẽ được bảo trì từ 08:00 đến 12:00 ngày 05/01.', 'GENERAL', GETDATE()),
-- (N'Họp cư dân', N'Họp cư dân toàn chung cư vào 19:00 ngày 07/01 tại sảnh tầng 1.', 'GENERAL', GETDATE()),
-- (N'Cắt điện định kỳ', N'Cắt điện từ 09:00 đến 11:00 ngày 10/01 để bảo trì hệ thống.', 'GENERAL', GETDATE()),
-- (N'Cắt nước', N'Hệ thống nước sẽ tạm ngưng từ 13:00 đến 16:00 ngày 12/01.', 'GENERAL', GETDATE()),
-- (N'Kiểm tra PCCC', N'Tiến hành kiểm tra hệ thống PCCC toàn tòa nhà.', 'GENERAL', GETDATE()),
-- (N'Vệ sinh bể nước', N'Vệ sinh bể nước sinh hoạt ngày 15/01.', 'GENERAL', GETDATE()),
-- (N'Bảo trì máy phát điện', N'Máy phát điện được bảo trì ngày 18/01.', 'GENERAL', GETDATE()),
-- (N'Thông báo an ninh', N'Đề nghị cư dân khóa cửa cẩn thận khi ra ngoài.', 'GENERAL', GETDATE()),
-- (N'Thu phí dịch vụ', N'Thu phí dịch vụ tháng 01.', 'GENERAL', GETDATE()),
-- (N'Nâng cấp hệ thống camera', N'Nâng cấp camera an ninh khu vực hầm xe.', 'GENERAL', GETDATE());

-- INSERT INTO revenues
-- (total, used, create_date, end_date, paid_date, apartment_id, payment_token, status, type)
-- SELECT
--     water_usage * 7000,
--     water_usage,
--     GETDATE(),
--     NULL,
--     NULL,
--     apartment_id,
--     NULL,
--     'Unpaid',
--     'WATER'
-- FROM apartments
-- WHERE is_occupied = 1 AND water_usage > 0;

-- INSERT INTO revenues
-- (total, used, create_date, end_date, paid_date, apartment_id, payment_token, status, type)
-- SELECT
--     electricity_usage * 3500,
--     electricity_usage,
--     GETDATE(),
--     NULL,
--     NULL,
--     apartment_id,
--     NULL,
--     'Unpaid',
--     'ELECTRICITY'
-- FROM apartments
-- WHERE is_occupied = 1 AND electricity_usage > 0;

-- INSERT INTO revenues
-- (total, used, create_date, end_date, paid_date, apartment_id, payment_token, status, type)
-- SELECT
--     service_usage,
--     service_usage,
--     GETDATE(),
--     NULL,
--     NULL,
--     apartment_id,
--     NULL,
--     'Unpaid',
--     'SERVICE'
-- FROM apartments
-- WHERE is_occupied = 1;

-- INSERT INTO revenues
-- (total, used, create_date, end_date, paid_date, apartment_id, payment_token, status, type)
-- SELECT
--     vehicle_count * 100000,
--     vehicle_count,
--     GETDATE(),
--     NULL,
--     NULL,
--     apartment_id,
--     NULL,
--     'Unpaid',
--     'VEHICLE'
-- FROM apartments
-- WHERE is_occupied = 1 AND vehicle_count > 0;

