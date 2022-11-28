USE Northwind
-- SELECT COUNT(*) FROM dbo.Customers

SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders, min(o.OrderDate) AS MinDate
FROM dbo.Orders AS o
RIGHT OUTER JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName
Order BY NumOrders