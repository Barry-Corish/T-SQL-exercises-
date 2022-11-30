DECLARE @TotalDelegates INT 
SELECT @TotalDelegates = COUNT(DelegateName) FROM dbo.Delegate
PRINT @TotalDelegates