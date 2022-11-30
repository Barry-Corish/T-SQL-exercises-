--SELECT * FROM dbo.VendorCourseDateDelegateCount

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates
FROM dbo.VendorCourseDateDelegateCount
GROUP BY VendorName, CourseName, StartDate
WITH ROLLUP