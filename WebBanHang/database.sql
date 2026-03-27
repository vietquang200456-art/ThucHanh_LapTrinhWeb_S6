INSERT INTO Categories (Name)
VALUES 
(N'Điện thoại'),
(N'Laptop'),
(N'Phụ kiện');

INSERT INTO Products (Name, Price, Description, ImageUrl, CategoryId)
VALUES 
(N'iPhone 15', 25000000, N'Điện thoại Apple', 'iphone15.jpg', 1),
(N'Samsung S23', 20000000, N'Điện thoại Samsung', 'samsungs23.jpg', 1),
(N'Dell XPS 13', 35000000, N'Laptop cao cấp', 'laptopdelxps13.jpg', 2),
(N'Xiaomi 13', 18000000, N'Điện thoại Xiaomi', 'xiaomi13.jpg', 1),
(N'MacBook Air M2', 40000000, N'Laptop Apple', 'mac_air_m2.jpg', 2),
(N'Logitech Mouse', 500000, N'Chuột máy tính', 'chuot.jpg', 3),
(N'AirPods Pro', 6000000, N'Tai nghe Apple', 'airpod_pro.jpg', 3);

INSERT INTO ProductImages (Url, ProductId)
VALUES 
('iphone15_1.jpg', 1),
('iphone15_2.jpg', 1),
('s23_1.jpg', 2);