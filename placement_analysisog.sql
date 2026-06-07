-- Engineering Student Placement Analytics
-- SQL Analysis Queries

USE placement_analytics;

-- Query 1: Total Students

SELECT COUNT(*) AS total_students
FROM placement_cleaned;

-- Query 2: Placement Rate Analysis

SELECT
    placement_status,
    COUNT(*) AS students
FROM placement_cleaned
GROUP BY placement_status;

-- Query 3: Placement Rate by College Tier

SELECT
    college_tier,
    placement_status,
    COUNT(*) AS students
FROM placement_cleaned
GROUP BY college_tier, placement_status
ORDER BY college_tier;

-- Query 4: Average Salary by College Tier

SELECT
    college_tier,
    ROUND(AVG(salary_package_lpa), 2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY college_tier
ORDER BY avg_salary DESC;

-- Query 5: CGPA Impact on Salary

SELECT
    cgpa_category,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY cgpa_category
ORDER BY avg_salary DESC;

-- Query 6: Internship Impact on Salary

SELECT
    internships,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY internships
ORDER BY internships;

-- Query 7: Certifications Impact on Salary

SELECT
    certifications,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY certifications
ORDER BY certifications;

-- Query 8: Projects Impact on Salary

SELECT
    projects_count,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY projects_count
ORDER BY projects_count;

-- Query 9: Employability Score by Placement Status

SELECT
    placement_status,
    ROUND(AVG(employability_score),2) AS avg_employability_score
FROM placement_cleaned
GROUP BY placement_status;

-- Query 10: Coding Skills Impact on Salary

SELECT
    ROUND(coding_skills,0) AS coding_score,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY ROUND(coding_skills,0)
ORDER BY coding_score;

-- Query 11: Communication Skills vs Placement

SELECT
    placement_status,
    ROUND(AVG(communication_skills),2) AS avg_communication_score
FROM placement_cleaned
GROUP BY placement_status;

-- Query 12: Open Source Contributions Impact

SELECT
    open_source_contributions,
    COUNT(*) AS students,
    ROUND(AVG(salary_package_lpa),2) AS avg_salary
FROM placement_cleaned
WHERE placement_status = 1
GROUP BY open_source_contributions
ORDER BY open_source_contributions;

-- Query 13: Aptitude Score by Placement Status

SELECT
    placement_status,
    ROUND(AVG(aptitude_score),2) AS avg_aptitude_score
FROM placement_cleaned
GROUP BY placement_status;