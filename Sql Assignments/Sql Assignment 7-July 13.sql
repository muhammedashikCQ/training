
--1. What is the Name, ProductID and Weight for the item with Product Number 'RM-M823'



SELECT P.Name,P.ProductID,p.Weight
FROM SalesLT.Product 
AS P 
WHERE P.ProductNumber='RM-M823'; 

--2. List products with weight greater than 500. For those products, show the following information: 
--Product ID, Name, ListPrice and calculated Gross Margin (difference between list price and standard cost)

SELECT P.ProductID,P.Name,P.ListPrice,(P.ListPrice-P.StandardCost) AS Calculated_Gross_Margin
FROM SalesLT.Product
AS P 
WHERE p.Weight>500;

--3. How many Products are there with the standard weight between 400 and 500
 

SELECT COUNT(P.ProductID)
FROM SalesLT.Product 
AS P 
WHERE P.Weight BETWEEN 400 AND 500;

----4. How many Yellow colored bikes are there 
--(Bikes can be identified by the Product number starting with 'BK')

SELECT COUNT(*) AS Count_Of_Bikes
FROM SalesLT.Product 
AS P 
WHERE P.ProductNumber LIKE('BK%') AND P.Color='Yellow';

--5. Find average, maximum and minimum list price for each Product line
--(exclude products where Product line is NULL), sort descending by Average Standard Cost.


SELECT SUBSTRING(P.ProductNumber,1,2) AS ProductLines,AVG(P.ListPrice)
AS Average,
MAX(P.ListPrice) 
AS Maximum,
MIN(P.ListPrice) 
AS Minimum,
AVG(P.StandardCost) 
AS StandardCost1
FROM SalesLT.Product 
AS P
GROUP BY(SUBSTRING(P.ProductNumber,1,2)) 
ORDER BY (StandardCost1)  DESC;

                      


