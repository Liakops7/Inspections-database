/*Display a list of the following details for each restaurant:
- Restaurant code
- Coordinates
- Number of non-critical issues identified in total from all inspections made at that particular restaurant.
- Number of critical issues identified in total from all inspections carried out at the given restaurant.
- Number of issues (critical and non-critical) detected in total from all inspections carried out at the given restaurant.
The list should be sorted in descending order based on the number of issues (critical and non-critical).*/

select inspections_main.rid, lat, lon,
COUNT(criticalIssue) as Criticals,
COUNT(nonCriticalIssue) as NonCriticals,
COUNT(criticalIssue) + COUNT(nonCriticalIssue) AS Summary
from restaurants, inspections_main
where restaurants.rid = inspections_main.rid
group by inspections_main.rid, lat, lon
order by Summary desc