--SELECT VendorName, CourseName, NumberDelegates FROM dbo.VendorCourseDelegateCount

--SELECT *, RANK() OVER(
--PARTITION BY Vendorname ORDER BY NumberDelegates DESC
--)
--AS LeaguePosRank
--FROM dbo.VendorCourseDelegateCount
--GO

SELECT *, DENSE_RANK() OVER(
PARTITION BY Vendorname ORDER BY NumberDelegates DESC
)
AS LeaguePosDenseRank
FROM dbo.VendorCourseDelegateCount
GO