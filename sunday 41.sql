use company;

CREATE TABLE Sales (
    SID INT PRIMARY KEY,
    Prod VARCHAR(255),
    Cat VARCHAR(255),
    Quan INT,
    Price DECIMAL(10, 2),
    SDate DATE
);

INSERT INTO Sales (SID, Prod, Cat, Quan, Price, SDate) VALUES
(1, 'Laptop', 'Electronics', 2, 700.00, '2023-07-01'),
(2, 'Mouse', 'Electronics', 5, 20.00, '2023-07-02'),
(3, 'T-shirt', 'Clothing', 10, 15.00, '2023-07-01'),
(4, 'Laptop', 'Electronics', 1, 750.00, '2023-07-03'),
(5, 'Jacket', 'Clothing', 4, 40.00, '2023-07-02'),
(6, 'Mouse', 'Electronics', 10, 18.00, '2023-07-04'),
(7, 'Shoes', 'Clothing', 3, 60.00, '2023-07-04'),
(8, 'Laptop', 'Electronics', 1, 720.00, '2023-07-04');

SELECT * FROM Sales;

select SUM(Quan), Prod from Sales group by Prod;

select SUM(Quan), Prod from Sales group by Prod having SUM(Quan) > 5;

select Cat, avg(Price) from Sales group by Cat;