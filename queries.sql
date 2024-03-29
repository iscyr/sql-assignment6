-- Part 1 - SQL queries
-- 1. Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.
SELECT CategoryName, Description FROM northwind.categories ORDER BY CategoryName;
-- 2. Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table sorted by Phone.
SELECT ContactName, CompanyName, ContactTitle, Phone FROM northwind.customers ORDER BY Phone;
-- 3. Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname respectively and HireDate from the employees table sorted from the newest to the oldest employee.
SELECT UPPER(FirstName) As FirstName, UPPER(LastName) As LastName, HireDate FROM northwind.employees ORDER BY HireDate DESC;
-- 4. Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted by Freight in descending order.
SELECT OrderID, OrderDate, ShippedDate, CustomerID, Freight 
FROM northwind.orders 
ORDER BY Freight DESC;
-- 5. Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.
SELECT lower(CustomerID) as CustomerID from northwind.customers;
-- 6. Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the Country in descending order then by CompanyName in ascending order.
SELECT CompanyName, Fax, Phone, Country, HomePage FROM northwind.suppliers 
ORDER BY Country DESC, CompanyName ASC;
-- 7. Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.
SELECT CompanyName, ContactName FROM northwind.customers WHERE City='Buenos Aires';
-- 8. Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.
SELECT ProductName, UnitPrice, QuantityPerUnit FROM northwind.products WHERE UnitsInStock=0;
-- 9. Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.
SELECT ContactName, Address, City FROM northwind.customers WHERE Country NOT IN ('Germany','Mexico','Spain');
-- 10. Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.
SELECT OrderDate, ShippedDate, CustomerID, Freight FROM northwind.orders
WHERE OrderDate = '1996-05-21';
