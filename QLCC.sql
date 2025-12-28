-- USE master;
-- GO

-- ALTER DATABASE apartment_management SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- DROP DATABASE apartment_management;
-- GO

-- CREATE DATABASE apartment_management;
-- GO


-- use apartment_management

-- INSERT INTO apartments
-- (apartment_id, apartment_type, owner, floor, area, occupants, is_occupied,
--  water_usage, electricity_usage, service_usage, vehicle_count, total)
-- VALUES
-- ('A101', '2BR', 'Nguyen Van A', 1, 70.5, 3, 1, 12.5, 120, 30, 2, 0),
-- ('A102', '1BR', 'Tran Thi B', 1, 45, 1, 1, 8, 80, 20, 1, 0);

-- INSERT INTO fees (type, price_per_unit)
-- VALUES
-- ('WATER', 7000),
-- ('ELECTRICITY', 3500),
-- ('SERVICE', 500000),
-- ('VEHICLE', 100000);

-- INSERT INTO users
-- (username, password, full_name, email, phone_number,
--  citizen_identification, role, apartment_id)
-- VALUES
-- (
--  'admin',
--  '$2a$10$7EqJtq98hPqEX7fNZaFWoOHi4kz7N9uEJrG6Z6E2E8P0m6k4eZ9i2',
--  'Administrator',
--  'admin@gmail.com',
--  '0900000000',
--  '000000001',
--  'ADMIN',
--  'A101'
-- );

-- UPDATE users
-- SET password = '$2a$10$AUm1yBdLo0KO9X9Mgg/Rt.S6pxyK1OwnIte0WkYxxw.xGMzsPh4hO'
-- WHERE username = 'admin';

