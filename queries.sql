-- Part 1: Test it with SQL
Columns in job table
id: int
name: varchar(150)
employer: varchar(150)
skills: varchar(150)
-- Part 2: Test it with SQL
SELECT name FROM employer WHERE employer.location = "New York City";
-- Part 3: Test it with SQL
DROP TABLE job;
-- Part 4: Test it with SQL
SELECT skill.name, description FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id --if a skill exists in the job_skill join table, it must be associated with at least one job
GROUP BY skill.id --to prevent duplicate entries without ignoring duplicate names or descriptions
ORDER BY skill.name ASC;