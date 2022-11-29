-- Total Revenue for Northwind for each Month 
SELECT 
*,
SUM(TotalRevenue) OVER(ORDER BY OrderYear, OrderMonth) AS RunningTotal, 
AVG(TotalRevenue) OVER(ORDER BY OrderYear, OrderMonth ROWS BETWEEN 11 PRECEDING AND CURRENT ROW) AS TwelveMonthAverage
FROM(
SELECT 
	YEAR(o.OrderDate) AS OrderYear,
	MONTH(o.OrderDate) AS OrderMonth,
	SUM(Quantity * UnitPrice) AS TotalRevenue
	FROM 
	dbo.Orders AS o
	INNER JOIN 
	dbo.[Order Details] AS od 
	ON 
	o.OrderID = od.OrderID 
	GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
) AS DerivedOrders
ORDER BY OrderYear, OrderMonth

-- Ranking
