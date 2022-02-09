SELECT
sum(salary) AS amount_salary_Java
FROM(
SELECT
 DISTINCT developer.first_name,
 salary
 FROM developer
 INNER JOIN mtm_developers_skills
 ON mtm_developers_skills.mtm_id_developer = developer.id
 INNER JOIN skills
 ON  mtm_developers_skills.mtm_id_skills = skills.id
 WHERE skills.skill = 'Java'
 ) tb
