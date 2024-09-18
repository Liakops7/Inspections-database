Create table restaurants
(rid int primary key,
lat float,
lon float
)
insert restaurants select distinct rid, lat, lon
from inspections_data
Create table i_date
(insdate date primary key,
insyear int,
insmonth int,
insday int,
insweekday int
)
insert i_date select distinct insdate, insyear,
insmonth, insday, insweekday from inspections_data
Create table inspections
(inscode int primary key,
instype nvarchar(100)
)
insert inspections
select distinct inscode, instype
from inspections_data
Create table violations
(vcode int primary key,
vdescription nvarchar(255),
vcategory nvarchar(255)
)
insert violations
select distinct vcode, vdescription, vcategory
from inspections_data
create table inspections_main
(
inscode int foreign key references
inspections(inscode),
vcode int foreign key references violations(vcode),
rid int foreign key references restaurants(rid),
insdate date foreign key references i_date(insdate),
criticalIssue int,
nonCriticalIssue int
primary key ( inscode, vcode, rid, insdate)
)
insert inspections_main
select inscode, vcode, rid, insdate, criticalIssue,
nonCriticalIssue
from inspections_data