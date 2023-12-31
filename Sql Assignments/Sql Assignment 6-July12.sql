

SELECT * FROM SalesLT.SalesOrderHeader;
SELECT * FROM SalesLT.Customer AS C WHERE C.CompanyName='Racing Socks'
SELECT * FROM SalesLT.Product;
SELECT * FROM SalesLT.SalesOrderDetail;
------

--1.Show the CompanyName for James D. Kramer

SELECT CompanyName FROM SalesLT.Customer WHERE (CONCAT(FirstName,' ',MiddleName,' ',LastName)= 'James D. Kramer');


--2.Show all the addresses listed for 'Modular Cycle Systems'

	
SELECT AddressLine1,AddressLine2,City,StateProvince,CountryRegion,PostalCode 
FROM 
SalesLT.Address  as A 
INNER JOIN  SalesLT.CustomerAddress AS CA 
ON A.AddressID=CA.AddressID
INNER JOIN SalesLT.Customer AS C 
ON C.CustomerID=CA.CustomerID WHERE CompanyName='Modular Cycle Systems';


--3.Show OrdeQty, the Name and the ListPrice of the order made by CustomerID 635

SELECT SOD.OrderQty,P.Name,P.ListPrice 
FROM SalesLT.Product AS P 
INNER JOIN SalesLT.SalesOrderDetail AS SOD 
ON P.ProductID=SOD.ProductID
INNER JOIN  SalesLT.SalesOrderHeader AS SOH 
ON SOD.SalesOrderID=SOH.SalesOrderID 
WHERE SOH.CustomerID=635 OR SOH.CustomerID=30025; 

--4.Show the first name and the email address of customer with CompanyName 'Bike World'

SELECT DISTINCT FirstName,EmailAddress 
FROM SalesLT.Customer 
WHERE CompanyName='Bike World';


--5.Show the CompanyName for all customers with an address in City 'Dallas'.

SELECT  DISTINCT C.CompanyName
FROM SalesLT.Customer AS C 
INNER JOIN SalesLT.CustomerAddress AS CA 
ON CA.CustomerID=C.CustomerID 
INNER JOIN SalesLT.Address AS A 
ON A.AddressID=CA.AddressID 
WHERE A.City='Dallas'; 

---6.How many items with ListPrice more than $1000 have been sold?

SELECT COUNT( DISTINCT SOD.ProductID)
FROM  SalesLT.Product 
AS P 
INNER JOIN SalesLT.SalesOrderDetail
AS SOD
ON P.ProductID=SOD.ProductID 
WHERE P.ListPrice>1000;

SELECT * FROM SalesLT.Product;
SELECT * FROM SalesLT.SalesOrderDetail;

---------------------------------------------------

--using EXISTS


SELECT COUNT(DISTINCT SOD.ProductID) 
FROM SalesLT.SalesOrderDetail 
AS SOD
WHERE EXISTS (
SELECT 1
FROM SalesLT.Product AS P
WHERE P.ProductID = SOD.ProductID
AND P.ListPrice > 1000);

--7)Give the CompanyName of those customers with orders over $100000. Include the subtotal plus tax plus freight.


SELECT C.CompanyName
FROM SalesLT.Customer 
AS C 
INNER JOIN SalesLT.SalesOrderHeader 
AS SOH 
ON SOH.CustomerID=C.CustomerID 
WHERE (SOH.SubTotal+ SOH.TaxAmt+SOH.Freight)>10000;

------------------------------------------------------------


--using EXISTS


SELECT C.CompanyName
FROM SalesLT.Customer 
AS C
WHERE EXISTS
(SELECT * FROM 
SalesLT.SalesOrderHeader 
AS SOH
WHERE SOH.CustomerID=C.CustomerID
AND(SOH.SubTotal+ SOH.TaxAmt+SOH.Freight)>10000)


--8)Find the number of left racing socks ('Racing Socks, L') ordered by CompanyName 'Riding Cycles'

SELECT SUM(SOD.OrderQty)
FROM SalesLT.Customer
AS C 
INNER JOIN SalesLT.SalesOrderHeader 
AS SOH 
ON SOH.CustomerID=C.CustomerID
INNER JOIN SalesLT.SalesOrderDetail 
AS SOD 
ON SOD.SalesOrderID=SOH.SalesOrderID 
INNER JOIN SalesLT.Product 
AS P 
ON P.ProductID=SOD.ProductID 
WHERE C.CompanyName='Riding Cycles' AND P.Name='Racing Socks, L';



------------------------------------------------------------------------

--using EXISTS


SELECT SUM(SOD.OrderQty) AS TotalQuantity
FROM SalesLT.SalesOrderDetail
AS SOD
WHERE EXISTS
(SELECT * 
FROM SalesLT.SalesOrderHeader
AS SOH
INNER JOIN SalesLT.Customer
AS C
ON C.CustomerID=SOH.CustomerID
WHERE C.CompanyName='Riding Cycles'
AND SOH.SalesOrderID=SOD.SalesOrderID
)AND EXISTS
(SELECT * 
FROM SalesLT.Product 
AS P 
WHERE P.ProductID=SOD.ProductID
AND P.Name='Racing Socks, L')


--9. �Single Item Order� is a customer order where only one item is ordered. 
--Show the SalesOrderID and the UnitPrice for every Single Item Order.


--SELECT SOD.SalesOrderID
--FROM SalesLT.SalesOrderDetail 
--AS SOD 
--GROUP BY(SOD.SalesOrderID)
--HAVING COUNT(*)=1;

SELECT SOD.SalesOrderID,SOD.UnitPrice 
FROM SalesLT.SalesOrderDetail AS SOD  
WHERE SalesOrderID IN(
SELECT  SOD.SalesOrderID
FROM SalesLT.SalesOrderDetail AS SOD
GROUP BY (SOD.SalesOrderID) HAVING COUNT(*)=1);



----------------------------

---Using EXISTS


SELECT SOD.SalesOrderID,SOD.UnitPrice 
FROM SalesLT.SalesOrderDetail
AS SOD
WHERE EXISTS
(SELECT SalesOrderID 
FROM SalesLT.SalesOrderDetail
AS SOD1
WHERE SOD1.SalesOrderID=SOD.SalesOrderID
GROUP BY  SOD1.SalesOrderID
HAVING COUNT(*)=1)




--10.)Show the product description for culture �fr� for product with ProductID 736.

SELECT * FROM SalesLT.ProductDescription;

SELECT PD.Description
FROM SalesLT.Product 
AS P 
INNER JOIN SalesLT.ProductModel 
AS PM 
ON PM.ProductModelID=P.ProductModelID
INNER JOIN SalesLT.ProductModelProductDescription
AS PMPD
ON PMPD.ProductModelID=PM.ProductModelID
INNER JOIN SalesLT.ProductDescription 
AS PD ON PD.ProductDescriptionID=PMPD.ProductDescriptionID
WHERE PMPD.Culture='fr' AND P.ProductID=736 ;

