
ALTER FUNCTION udf_DelegateDays() 
RETURNS TABLE
AS
RETURN (
	SELECT d.DelegateID, SUM(cr.DurationDays) AS DelegateDays, COUNT(*) AS DelegateCourses
	FROM dbo.Delegate AS d
	JOIN dbo.DelegateAttendance AS da
	ON d.DelegateID = da.DelegateID
	JOIN dbo.CourseRun AS cr 
	ON cr.CourseRunID = da.CourseRunID
	GROUP BY d.DelegateID
	)
GO
SELECT*FROM dbo.udf_DelegateDays()
