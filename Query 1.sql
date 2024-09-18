/*Display a list of the number of inspections per year and inspection type (instype). 
The list should be sorted by year in descending order*/

select insyear, instype, count(*)
from i_date, inspection, inspections
where i_date.insdate = inspections.insdate and
inspection.inscode = inspections.inscode
group by insyear, instype
order by insyear desc