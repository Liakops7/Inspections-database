CREATE TABLE inspections_data (
rid int,
lat float,
lon float,
insdate date,
insyear int,
insmonth int,
insday int,
insweekday int,
inscode int,
instype nvarchar(100),
criticalIssue int,
nonCriticalIssue int,
vcode int,
vdescription nvarchar(255),
vcategory nvarchar(255)
)