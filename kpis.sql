-- # kpis avg age
SELECT 
    ROUND(AVG(age), 1) AS avg_age
FROM hr
WHERE termdate = '0000-00-00';

-- # total employee
SELECT COUNT(*) AS total_employees FROM hr WHERE age >= 18 ;

-- # active employees
SELECT COUNT(*) AS total_employees 
FROM hr 
WHERE age >= 18 AND termdate = '0000-00-00';

-- # Average Length of Employment / Tenure
SELECT 
    ROUND(AVG(DATEDIFF(termdate, hire_date))/365,0) AS avg_length_employment
FROM hr
WHERE termdate <= CURDATE() AND termdate <> '0000-00-00';

-- 3 attrition rate

SELECT 
    ROUND(
        (SUM(CASE 
                WHEN STR_TO_DATE(termdate, '%Y-%m-%d') IS NOT NULL 
                     AND STR_TO_DATE(termdate, '%Y-%m-%d') <= CURDATE() 
                THEN 1 
                ELSE 0 
            END) 
        / COUNT(*)) * 100, 2
    ) AS attrition_rate_percent
FROM hr;






