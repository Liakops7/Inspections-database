# Inspections Database
Implementation of health inpsections database, the records are reported from United States Department of Health and Human Services.

The public health service is interested in developing a repository for extracting useful information about inspection data. The requirements of the public health service focus, among other things, on the breakdown of the number of inspections and violations by type of inspection, category of violation, region, as well as any combination thereof. It goes without saying that in the analysis of the data the time factor should also be taken into account so that the service is able to produce statistical reports from the scope of the inspections by year, month, day, etc.

You are invited to design and implement the above data warehouse in order to increase the efficiency of conducting useful statistics. Then feed the warehouse with the data from the inspections_data.txt file and run some queries to produce useful statistics. You will implement the data warehouse using the DBMS SQL Server.

| rid              | integer       | Restaurant`s code             |
|------------------|---------------|-------------------------------|
| lat              | float         | Latitude                      |
| lon              | float         | Lognitude                     |
| insdate          | date          | Inspection`s date             |
| insyear          | integer       | Inspection`s year             |
| insmonth         | integer       | Inspection`s month            |
| insday           | integer       | Inspection`s day              |
| insweekday       | integer       | Inspection`s weekday          |
| inscode          | integer       | Inspection`s type code        |
| instype          | nvarcahr(100) | Inspection`s type             |
| criticalIssue    | integer       | Number of critical issues     |
| nonCriticalIssue | integer       | Number of non critical issues |
| vcode            | integer       | Violation code                |
| vdescription     | nvarcahr(255) | Violation description         |
| vcategory        | nvarcahr(255) | Violation category            |
