INSERT INTO Categories (Name)
VALUES 
(N'Điện thoại'),
(N'Laptop'),
(N'Phụ kiện');

INSERT INTO Products (Name, Price, Description, ImageUrl, CategoryId)
VALUES 
(N'iPhone 15', 25000000, N'Điện thoại Apple', 'iphone15.jpg', 1),
(N'Samsung S23', 20000000, N'Điện thoại Samsung', 's23.jpg', 1),
(N'Dell XPS 13', 35000000, N'Laptop cao cấp', 'xps13.jpg', 2);

INSERT INTO ProductImages (Url, ProductId)
VALUES 
('iphone15_1.jpg', 1),
('iphone15_2.jpg', 1),
('s23_1.jpg', 2);