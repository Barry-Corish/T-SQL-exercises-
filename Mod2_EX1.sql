--SELECT VendorName, PhoneNumber FROM Vendor

--SELECT TrainerName, PhoneNumber FROM Trainer

-- Combine the two datasets 

--SELECT ContactName, PhoneNumber FROM dbo.Vendor 
--UNION 
--SELECT TrainerName, PhoneNumber FROM dbo.Trainer

SELECT 'Vendor' AS ContactType, ContactName, PhoneNumber FROM dbo.Vendor 
UNION 
SELECT 'Trainer' AS ContactType, TrainerName, PhoneNumber FROM dbo.Trainer