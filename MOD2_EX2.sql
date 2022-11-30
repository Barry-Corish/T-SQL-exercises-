-- Task 1 
SELECT DelegateID FROM DelegateAttendance AS da 
JOIN CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
JOIN Course AS c 
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQL'

-- Intersect both Groups
INTERSECT

-- Task 2 
SELECT DelegateID FROM DelegateAttendance AS da 
JOIN CourseRun AS cr
ON da.CourseRunID = cr.CourseRunID
JOIN Course AS c 
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQLPLUS'




