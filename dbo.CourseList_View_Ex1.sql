USE QATSQLPLUS

CREATE VIEW dbo.CourseList AS(
SELECT CourseName, CourseID, VendorName FROM Course as c
JOIN Vendor as v
ON c.VendorID = v.VendorID
)
GO

SELECT * FROM dbo.CourseList