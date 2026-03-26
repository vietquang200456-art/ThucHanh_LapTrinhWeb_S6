INSERT INTO Categories (Name)
VALUES 
(N'Điện thoại'),
(N'Laptop'),
(N'Phụ kiện');

INSERT INTO Products (Name, Price, Description, ImageUrl, CategoryId)
VALUES 
(N'iPhone 15', 25000000, N'Điện thoại Apple', 'https://genz.com.vn/wp-content/uploads/2023/07/iphone-15-camera-48mp-thumbnail.jpg', 1),
(N'Samsung S23', 20000000, N'Điện thoại Samsung', 'https://th.bing.com/th/id/OIP.GoFkNVKYoHA8BgZvpB-wwAHaEK?w=277&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', 1),
(N'Dell XPS 13', 35000000, N'Laptop cao cấp', 'https://th.bing.com/th/id/OIP.sbYxnBsAkpeommDlHLL4lAHaEY?w=277&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', 2),
(N'Xiaomi 13', 18000000, N'Điện thoại Xiaomi', 'images/xiaomi13.jpg', 1),
(N'MacBook Air M2', 40000000, N'Laptop Apple', 'https://cdn.tgdd.vn/Products/Images/44/283891/macbook-air-m2-2022-1.jpg', 2),
(N'Logitech Mouse', 500000, N'Chuột máy tính', 'https://cdn.tgdd.vn/Products/Images/44/295432/logitech-mouse-1.jpg', 3),
(N'AirPods Pro', 6000000, N'Tai nghe Apple', 'https://cdn.tgdd.vn/Products/Images/44/268112/airpods-pro-2-1.jpg', 3);

INSERT INTO ProductImages (Url, ProductId)
VALUES 
('iphone15_1.jpg', 1),
('iphone15_2.jpg', 1),
('s23_1.jpg', 2);