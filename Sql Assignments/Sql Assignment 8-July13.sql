--1.  Use the SubTotal value in SaleOrderHeader to list orders from the largest to the smallest.
--For each order show the CompanyName and the SubTotal and the total weight of the order.

----------------------------------------------------------------------------------------------

SELECT C.CompanyName,SOH.SubTotal,SUM(OrderQty * Weight)
FROM SalesLT.Customer AS C
INNER JOIN  SalesLT.SalesOrderHeader
AS SOH
ON SOH.CustomerID=C.CustomerID
INNER JOIN SalesLT.SalesOrderDetail
AS SOD
ON SOD.SalesOrderID=SOH.SalesOrderID
INNER JOIN SalesLT.Product
AS P
ON P.ProductID=SOD.ProductID
GROUP BY C.CompanyName,SOH.SubTotal
ORDER BY (SOH.SubTotal) DESC;


------------------------------------------------------------------------------------------------
--2. How many products in ProductCategory ‘Cranksets’ have been sold to an address in ‘London’?

SELECT  COUNT(DISTINCT(P.ProductID)) AS NO_OF_PRODUCTS
FROM SalesLT.ProductCategory AS PC
INNER JOIN  SalesLT.Product AS P
ON P.ProductCategoryID=PC.ProductCategoryID
INNER JOIN SalesLT.SalesOrderDetail AS SOD
ON SOD.ProductID=P.ProductID
--WHERE PC.ProductCategoryID=12;
INNER JOIN SalesLT.SalesOrderHeader AS SOH
ON SOH.SalesOrderID=SOD.SalesOrderID
INNER JOIN SalesLT.Customer AS C
ON C.CustomerID=SOH.CustomerID
INNER JOIN SalesLT.CustomerAddress AS CA
ON CA.CustomerID=C.CustomerID
INNER JOIN SalesLT.Address AS A
ON A.AddressID=CA.AddressID
WHERE PC.Name='Cranksets' AND City='London';


--3.For every customer with a ‘Main Office’ in Dallas show AddressLine1 of the ‘Main Office’
--and AddressLine1 of the ‘Shipping’ address
-- if there is no shipping address leave it blank. Use one row per customer
--SELECT * FROM SalesLT.CustomerAddress


SELECT CA.CustomerID,
CASE
WHEN CA.AddressType='Main Office' THEN A.AddressLine1
ELSE ' '
END AS [Main Office],
CASE
WHEN CA.AddressType='Shipping' THEN AA.AddressLine1
ELSE ' '
END Shipping
FROM SalesLT.[Address] AS A
INNER JOIN SalesLT.CustomerAddress
AS CA
ON CA.AddressID=A.AddressID
INNER JOIN SalesLT.[Address]
AS AA
ON AA.AddressID=A.AddressID
WHERE A.City='Dallas'


-----------------------------------



SELECT CustomerID,MAX([Main Office]) AS Main_Office,MAX(Shipping) AS Shipping
FROM
(SELECT CA.CustomerID,
CASE
WHEN CA.AddressType='Main Office' THEN A.AddressLine1
END AS [Main Office],
CASE
WHEN CA.AddressType='Shipping' THEN A.AddressLine1
ELSE ' '
END Shipping
FROM SalesLT.Address AS A
INNER JOIN SalesLT.CustomerAddress
AS CA
ON CA.AddressID=A.AddressID
WHERE A.City='Dallas') AS t
GROUP BY CustomerID;



---4.For each order show the SalesOrderID and SubTotal calculated  in three ways:
 

   SELECT * FROM SalesLT.SalesOrderHeader;
   SELECT * FROM SalesLT.SalesOrderDetail ;
   
   --A) From the SalesOrderHeader  (Order header table)          
   
   SELECT SOH.SalesOrderID,SOH.SubTotal
   FROM SalesLT.SalesOrderHeader AS SOH;

    --B) Sum of OrderQtyUnitPrice  ( Order Detail table )

SELECT SOD.SalesOrderID,
SUM(SOD.OrderQty*SOD.UnitPrice)
AS Subtotal
FROM SalesLT.SalesOrderDetail
AS SOD
GROUP BY SOD.SalesOrderID;


  --C) Sum of OrderQtyListPrice (Product table)

SELECT SOD.SalesOrderID,
SUM(SOD.UnitPrice * SOD.OrderQty)  
AS SubTotal
FROM SalesLT.SalesOrderDetail  
AS SOD
INNER JOIN
SalesLT.Product
AS P
ON SOD.ProductID=P.ProductID
GROUP BY SOD.SalesOrderID;

---5.Show the best selling item by value.

SELECT TOP 1 P.[Name],P.[ProductID],
SUM(SOD.OrderQty*(P.ListPrice-P.StandardCost))
AS [Profit]
FROM SalesLT.Product
AS P
INNER JOIN SalesLT.SalesOrderDetail
AS SOD
ON SOD.ProductID= P.ProductID
GROUP BY P.ProductID,P.[Name]
ORDER BY [Profit] DESC;


--6.From which city

  --a) most no of order

SELECT TOP 1 A.City,
COUNT(SOH.SalesOrderID)
AS OrderTimes
FROM
SalesLT.SalesOrderHeader
AS SOH
INNER JOIN SalesLT.Address
AS A
ON A.AddressID=SOH.ShipToAddressID
GROUP BY A.City
ORDER BY OrderTimes DESC;



--b) most profitable city



SELECT TOP 1 A.City,
SUM(SOD.OrderQty*(P.ListPrice-P.StandardCost))
AS [Profit]
FROM
SalesLT.Product
AS P
INNER JOIN
SalesLT.[SalesOrderDetail]
AS SOD
ON SOD.ProductID=P.ProductID
INNER JOIN SalesLT.SalesOrderHeader
AS SOH
ON SOH.SalesOrderID=SOD.SalesOrderID
INNER JOIN SalesLT.[Address]
AS A
ON A.AddressID=SOH.ShipToAddressID
GROUP BY A.City
ORDER BY [PROFIT] DESC




--c) which hasn't placed any orders

SELECT A.City
FROM  SalesLT.Address
AS A
LEFT JOIN SalesLT.SalesOrderHeader
AS SOH
ON SOH.ShipToAddressID=A.AddressID
WHERE SOH.SalesOrderID IS NULL
GROUP BY A.City;

