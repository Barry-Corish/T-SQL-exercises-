CREATE FUNCTION dbo.udf_IndividualDelegateDays(@DelegateID INT)
	RETURNS TABLE 
	AS 
	RETURN(
		SELECT @DelegateID AS DelegateID, SUM(cr.DurationDays) AS DelegateDays, COUNT(*) AS DelegateCourses
		FROM dbo.Delegate AS d
		JOIN dbo.DelegateAttendance AS da
		ON d.DelegateID = da.DelegateID
		JOIN dbo.CourseRun AS cr 
		ON cr.CourseRunID = da.CourseRunID
		WHERE d.DelegateID = @DelegateID
	)
GO
SELECT*FROM dbo.udf_IndividualDelegateDays(1)