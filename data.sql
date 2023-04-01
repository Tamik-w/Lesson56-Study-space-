CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PRODUCT` varchar(45) NOT NULL,
  `Price` int NOT NULL,
  `rating` decimal(5,2) NOT NULL,
  `category` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) 

INSERT INTO products(PRODUCT, Price, rating, category, brand) 
VALUES('iPhone 9', 549 , 4.69 ,'smartphones', 'Apple'),
('iPhone X', 899 , 4.44 ,'smartphones', 'Apple'),
('Samsung Universe 9', 1249 , 4.09 ,'smartphones', 'Samsung'),
('OPPO F19', 280 , 4.3 ,'smartphones', 'OPPO'),
('Huawei P30', 499 , 4.09 ,'smartphones', 'Huawei'),
('MacBook Pro', 1149 , 4.57 ,'laptops', 'Apple'),
('Samsung Galaxy Book', 1499 , 4.25 ,'laptops', 'Samsung'),
('Microsoft Surface Laptop 4', 1499 , 4.43 ,'laptops', 'Microsoft Surface'),
('Infinix INBOOK', 1099 , 4.54 ,'laptops', 'Infinix'),
('HP Pavilion 15 DK1056WM', 1099 , 4.43 ,'laptops', 'HP Pavilion');

SELECT PRODUCT, Price FROM products WHERE brand = "Apple";
SELECT PRODUCT FROM products WHERE Price < 1000;
SELECT PRODUCT FROM products WHERE Price BETWEEN 500 AND 1500;
SELECT PRODUCT, Price, rating FROM products WHERE brand IN ("Apple", "Samsung", "Huawei");
SELECT PRODUCT, category FROM products WHERE PRODUCT LIKE "%Samsung%";