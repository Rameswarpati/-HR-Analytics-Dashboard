--# problem statement//
--#What is the gender breakdown of employees in the company?//--

select gender,count(*) from hr
where termdate='0000-00-00'
 group by gender;
 
--#What is the race/ethnicity breakdown of employees in the company? 
 select race, count(*) race from hr
 where termdate='0000-00-00'
 group by race
 order by count(*) desc;
 
 --#What is the age distribution of employees in the company?
 
 select min(age)
 as youngest,
 max(age) as oldest from hr
  where termdate='0000-00-00'
 ;
 select 
 case
 when age>=23 and age<=25 then '23-25'
 when age>=26 and age<= 34 then '26-34'
  when age>=35 and age<= 44 then '35-44'
   when age>=45 and age<= 55  then '45-55'
    when age>=56 and age<= 64 then '56-64'
    else '65+'
    end as age_group,gender,
    count(*) as count 
    from hr
      where termdate='0000-00-00'
      group by age_group,gender
      order by age_group ,gender
    ;
 select age_group,gender,count(*) from hr 
  where termdate='0000-00-00'
  group by age_group,gender
  order by age_group,gender;
  
  
 --#How many employees work at headquarters versus remote locations?
 
 select location,count(*) from hr
 where termdate='0000-00-00'
 group by location;
 
 
 
 --# what is theaverage length of employment for employees who have been terminated? 
 
 select 
 
 round(avg(datediff(termdate,hire_date))/365,0)
 as avg_length_employment
 from hr
 where termdate <= curdate() and termdate <>'0000-00-00';
 
 --#How does the gender distribution vary across departments and job titles?
 
 select department,gender ,
 count(*) as count from hr
 where termdate='0000-00-00'
 group by department,gender 
;
 
 --#What is the distribution of job titles across the company?
 
 select jobtitle,count(*) as count
 from hr 
  where termdate='0000-00-00'
  group by jobtitle
  order by jobtitle DESC;
 
 --#Which department has the highest turnover rate?
SELECT 
    department,
    total_count,
    terminated_count_,
    ROUND(terminated_count_ / total_count, 4) AS termination_rate
FROM (
    SELECT 
        department,
        COUNT(*) AS total_count,
        SUM(CASE 
                WHEN termdate <> '0000-00-00' 
                     AND termdate <= CURDATE() 
                THEN 1 ELSE 0 
            END) AS terminated_count_
    FROM hr 
    GROUP BY department
) AS subquery
ORDER BY termination_rate DESC;

--#What is the distribution of employees across locations by city and state?

select location_state ,count(*) as count from hr
  where termdate='0000-00-00'
  group by location_state 
  order by count desc;

 
 -- # How has the company's employee count changed over time based on hire and term dates?
 
 
 
SELECT 
    year,
    hires,
    terminations,
    hires - terminations AS net_change,
    ROUND((hires - terminations) / hires * 100, 2) AS net_change_percent
FROM (
    SELECT 
        YEAR(hire_date) AS year,
        COUNT(*) AS hires,
        SUM(
            CASE 
                WHEN termdate <> '0000-00-00' AND termdate <= CURDATE() 
                THEN 1 
                ELSE 0 
            END
        ) AS terminations
    FROM hr
    GROUP BY YEAR(hire_date)
) AS subquery
ORDER BY year ASC
;


SELECT year(hire_date),COUNT(*) FROM HR
group by year(hire_date);

SELECT 
    YEAR(hire_date) AS year,
    COUNT(*) AS hires
FROM HR
GROUP BY YEAR(hire_date)
ORDER BY year ASC;

-- # what is the tenure distribution for each dept?

select department, 
 round(avg(datediff(termdate,hire_date))/365,0) as avg_tenure
 from hr 
 group by  department;



