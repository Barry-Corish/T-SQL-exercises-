GO
WITH BourneCourses AS (
	SELECT CourseRunID, StartDate FROM dbo.Trainer AS t
	INNER JOIN dbo.CourseRun AS cr
	ON t.TrainerID = cr.TrainerID
	WHERE TrainerName = 'Jason Bourne' 
)
SELECT d.DelegateID, d.DelegateName, d.CompanyName, bc.StartDate FROM DelegateAttendance AS da 
JOIN BourneCourses AS bc 
ON da.CourseRunID = bc.CourseRunID
JOIN Delegate AS d 
ON da.DelegateID = d.DelegateID

