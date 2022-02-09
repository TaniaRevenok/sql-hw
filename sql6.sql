SELECT
 projects.name_project,
 SUM(cost) AS cost,
 AVG(salary) AS average_salary
 FROM developer
 INNER JOIN mtm_project_developers
 ON mtm_project_developers.mtm_id_developer = developer.id
 INNER JOIN projects
 ON mtm_project_developers.mtm_id_developer = projects.id
 GROUP BY projects.name_project
 ORDER BY cost
 LIMIT 1
