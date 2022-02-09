SELECT
  projects.name_project,
  sum(salary) AS amount_salary,
  avg(salary) AS average_salary
 FROM developer
 INNER JOIN mtm_project_developers
 ON mtm_project_developers.mtm_id_developer = developer.id
 INNER JOIN projects
 ON mtm_project_developers.mtm_id_project = projects.id
 GROUP BY projects.name_project
 ORDER BY amount_salary DESC
 LIMIT 1
