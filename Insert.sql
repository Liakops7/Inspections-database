BULK INSERT inspections_data
FROM 'C:\inspections_data.txt'
WITH (DATAFILETYPE = 'widechar', FIRSTROW =2,
FIELDTERMINATOR= '|',
ROWTERMINATOR = '\n');