/* Create a data cube, each cell of which contains the total number of critical issues 
detected by all inspections by inspection type (instype), violation category (vcategory) and inspection year (insyear)*/

select instype, vcategory, insyear, sum(criticalIssue)
from inspections, violations, i_date, inspections_main
where inspections.inscode = inspections_main.inscode AND
violations.vcode = inspections_main.vcode AND
i_date.insdate = inspections_main.insdate
group by CUBE (instype, vcategory, insyear)