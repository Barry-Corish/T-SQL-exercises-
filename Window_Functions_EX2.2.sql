--SELECT * FROM dbo.VendorCourseDelegateCount

SELECT *, RANK() OVER(
PARTITION BY Vendorname ORDER BY NumberDelegates DESC
)
AS League_Pos
FROM dbo.VendorCourseDelegateCount
GO

WITH Ranked_Courses AS(
SELECT *, 
RANK() OVER (PARTITION BY VendorName
ORDER BY NumberDelegates DESC) AS LeaguePos
FROM dbo.VendorCourseDelegateCount
)
SELECT VendorName, CourseName, NumberDelegates 
FROM Ranked_Courses 
WHERE LeaguePos = 1 