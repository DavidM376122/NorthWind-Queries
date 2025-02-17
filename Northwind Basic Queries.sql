-- SELECT database
use northwind;

-- returns all fields from categories
select *
from categories;

select *
from Customers;

-- select all data in columns for customername, city and country 
select CustomerName, City, Country
from Customers;

-- select all data in columns productid and productname
select ProductID, ProductName 
from Products;
select firstname, lastname, birthdate
from employees;
select customername, address, city
from customers;
-- customer countries
select distinct country 
from customers;
select count(DISTINCT country) 
from customers;
select distinct city 
from suppliers;
select count(distinct city)
from customers;
select * from customers
where country = 'Mexico';
select * from products 
where productID = 1;
select *
from customers
where city = 'London';
select count(*)
from customers
where country = 'USA';
select * from products
where price > 100;
select * from orders
where orderdate > '1996-07-30';
select  count(*) 
from customers
where customerID > 15;
select  count(*) 
from order_details
where quantity < 3;
select * from employees
where birthdate > '1960-01-01';
select* from customers
where country = 'Germany' AND city = 'Berlin';
select * from suppliers
where country  = 'Japan' AND city = 'Tokyo';
select * 
from customers
where country = 'UK' AND city = 'London';
select * 
from customers
where country = 'UK' AND country = 'US';
select *
from products
where price < 5 AND productID > 10;
select * 
from customers 
where city = 'Portland' OR city = 'Kirkland';
select * 
from orders
where orderdate = '1996-08-27' or orderdate = '1997-02-21';
select * 
from customers
order by country asc;
select productname, price 
from products
order by price asc;
select * 
from suppliers
order by city desc;
select * 
from customers
order by country, customername;
select * 
from customers
order by country asc, customername desc;
select * from employees
order by lastname desc, birthdate desc;
select *
from customers
where country = 'USA'
order by customername asc;
select * 
from customers
limit 3;
select * 
from products
order by price
limit 5;
select * 
from customers
where country = 'Germany'
limit 3;
select * 
from products
where categoryID = 1
limit 3;
select *
from products
where price > 20
limit 10;
select *
from customers
where city = 'london'
limit 3;
select min(price) as smallestprice
from products;
select 
min(birthdate) as youngestemployee
from employees;
select 
min(orderdate) as RecentOrdeDate
from orders;
select
max(price) as HighestPrice
from Products;
select
min(quantity) as LowestQuantity
from order_details;
SELECT SUM(Quantity)
FROM Order_Details;
select count(productid)
from products;
select avg(quantity)
from order_details;
select count(employeeid)
from employees;
select sum(quantity)
from order_details;
select sum(price)
from products;
select * 
from customers
where customername like 'a%';
select * 
from customers
where customername like'%a';
select * 
from customers
where customername like '%or%';
select * 
from employees
where firstname like '_n%';
select *
FROM Shippers 
WHERE ShipperName LIKE '%express%';
select * from customers
where country in ('germany','france','uk');
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
select *
from customers 
where country not in ('germany','france', 'uk');
SELECT * FROM Customers
WHERE City IN ('Paris', 'London', 'Madrid');
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
SELECT * 
FROM Customers
WHERE City IN ('Paris', 'Berlin', 'Madrid');
SELECT OrderID, ShipperID 
FROM Orders 
WHERE ShipperID IN (1, 3);
SELECT * 
FROM Products 
WHERE Price IN ('10','20', '30')
order by price;
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
SELECT * 
FROM orders
WHERE orderdate NOT BETWEEN 10 AND 20;
SELECT * 
FROM Orders
WHERE Orderdate BETWEEN "1996-07-04" AND "1996-12-31"
order by orderdate;
SELECT * FROM Products
WHERE Productname BETWEEN "Geitost" AND "Konbu"
order by productname;
SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);
select *
from products
where price between 50 and 100
order by price desc;
select *
from orders 
where orderdate between "1996-01-01" AND "1996-12-31"
order by orderdate desc;
select *
from order_details
where quantity between 5 and 15
order by quantity;
SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customers;
-- Retrieve all columns from the "Customers" table.
select *
from customers;
-- Retrieve only the "CustomerName" and "City" columns from the "Customers" table.
select customername, city
from customers;
-- Retrieve distinct values of the "City" column from the "Customers" table.
select city
from customers;
select *
from products
where price >50;
select *
from customers
where country = 'usa' or 'uk';
select *
from orders
order by orderdate desc;
select *
from products
where price between 20 and 50
order by price desc;
select *
from customers
where country = 'usa' and city = 'portland' or 'kirkland'
order by customername asc;
select *
from customers
where country = 'uk' or city = 'london'
order by customername asc;
select *
from products
where categoryid = 1 or 2;
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
select *
from orders
inner join shippers
on orders.shipperid = shippers.shipperid;
select products.ProductName, suppliers.SupplierName
from products
inner join suppliers
on products.supplierid = suppliers.supplierid
where suppliers.supplierName = "G'day, Mate";
select employees.employeeid, orders.employeeid, employees.firstname, employees.lastname, orders.orderdate
from employees
inner join orders
on employees.employeeid = orders.employeeid;
select orders.shipperid, shippers.shippername
from orders
inner join shippers
on orders.shipperid = shippers.shipperid;
select categories.categoryid, products.productname, categories.categoryname
from categories
inner join products
on categories.categoryid = products.categoryid;
select products.productid, products.productname, order_details.quantity
from products
inner join order_details
on products.productid = order_details.productid;
select orders.shipperid, orders.OrderDate, shippers.shippername
from orders
inner join shippers
on orders.shipperid = shippers.shipperid
where shippername = 'Speedy Express';
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees 
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
select avg(price), products.ProductName, categories.CategoryName
from products
join categories
on products.CategoryID = categories.CategoryID
group by products.ProductName, categories.CategoryName;
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders 
FROM Orders
LEFT JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
select count(customerid) as totalcustomers, country
from customers
group by country
order by totalcustomers desc;
select products.ProductID, products.ProductName, products.price, order_details.quantity
from products
inner join order_details
on products.ProductID = order_details.quantity;