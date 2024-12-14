INSERT INTO airport VALUES
('HAN', 'Noi Bai International Airport', 'Ha Noi', 'Viet Nam'),
('SGN', 'Tan Son Nhat International Airport', 'Ho Chi Minh City', 'Viet Nam'),
('DAD', 'Da Nang International Airport', 'Da Nang', 'Viet Nam'),
('SIN', 'Singapore Changi Airport', '', 'Singapore'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'US');

INSERT INTO customer VALUES
('abc123', 'Nguyen Van A', '144 Xuan Thuy, Cau Giay, Ha Noi', '0123456789'),
('abc321', 'Nguyen Van B', '143 Xuan Thuy, Cau Giay, Ha Noi', '0123123123'),
('cba123', 'Nguyen Van C', '142 Xuan Thuy, Cau Giay, Ha Noi', '0987654321'),
('cba321', 'Nguyen Van D', '141 Xuan Thuy, Cau Giay, Ha Noi', '0987987987'),
('def456', 'Nguyen Van E', '140 Xuan Thuy, Cau Giay, Ha Noi', '0987651234');

INSERT INTO flight VALUES
('VJC181', 'HAN', '21:15:00', '06/12/2024', 'SGN', '23:05:00', '06/12/2024', 182),
('SIA193', 'HAN', '18:35:00', '14/12/2024', 'SIN', '22:55:00', '14/12/2024', 210),
('HVN148', 'SGN', '21:25:00', '14/12/2024', 'DAD', '22:25:00', '14/12/2024', 182),
('SIA185', 'SGN', '20:00:00', '14/12/2024', 'SIN', '22:45:00', '14/12/2024', 250),
('SIA174', 'SIN', '13:55:00', '14/12/2024', 'DAD', '15:40:00', '14/12/2024', 210);

INSERT INTO reservation VALUES
('VJC181', 'abc123', '2024-12-12 15:00:00'),
('SIA193', 'abc123', '2024-12-10 07:00:00'),
('HVN148', 'cba123', '2024-12-13 13:00:00'),
('SIA185', 'cba321', '2024-12-11 09:00:00'),
('SIA174', 'def456', '2024-12-12 20:00:00');