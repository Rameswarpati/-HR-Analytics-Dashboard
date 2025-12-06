create database project;
use project;
select * from hr;
Alter table hr change column ï»¿id emp_id varchar(20)null;


select birthdate from hr;
UPDATE hr
SET birthdate =  
CASE
    WHEN birthdate LIKE '%/%' THEN 
        DATE_FORMAT(STR_TO_DATE(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN 
        DATE_FORMAT(STR_TO_DATE(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;
alter table hR modify column birthdate date;
describe hr;


UPDATE hr
SET hire_date =  
CASE
    WHEN hire_date LIKE '%/%' THEN 
        DATE_FORMAT(STR_TO_DATE(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN 
        DATE_FORMAT(STR_TO_DATE(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;
select hire_date from hr;
alter table hr modify hire_date date;
describe hr;

select termdate from hr;
UPDATE hr
SET termdate = '0000-00-00'
WHERE TRIM(termdate) = '' OR termdate IS NULL;

UPDATE hr
SET termdate = DATE(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL
  AND TRIM(termdate) != '';


alter table hr modify column termdate date;

SHOW COLUMNS FROM hr LIKE 'termdate';
alter table hr add column age int;

select age from hr;
update hr set age=timestampdiff(YEAR,birthdate,CURDATE());
select birthdate,age from hr;
select min(age)
 as youngest,
 max(age) as oldest from hr;
 
 select age from hr where age <18;