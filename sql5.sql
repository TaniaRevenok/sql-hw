SELECT
 name_project,
 cost
FROM projects
WHERE cost = 
 (SELECT
  min(cost) AS cost
  FROM projects
 );
