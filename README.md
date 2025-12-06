# -HR-Analytics-Dashboard
Cleaned HR data, calculated KPIs like employee age, tenure, attrition, and visualized workforce demographics, turnover, and hiring trends using interactive dashboards.

<img width="1267" height="706" alt="Image" src="https://github.com/user-attachments/assets/bcadfd8c-cd8a-4014-98bd-2a002bb75a69" />
<img width="1263" height="692" alt="Image" src="https://github.com/user-attachments/assets/43b87dda-0597-4c32-b721-905e42572eee" />

Project Overview

The objective of this project is to analyze HR data of 22,000 employees to understand the company's workforce structure, diversity, hiring patterns, attrition rate, and employment trends.
Using MySQL, I performed advanced data cleaning, date formatting, tenure calculations, age grouping, and generated detailed analytical insights.
The cleaned data was then visualized using Power BI to build a complete HR Analytics Dashboard.

🛠️ Tools Used

MySQL → Data Cleaning, Date Conversion, KPI Calculations

Power BI → Dashboard, DAX Measures, Visualizations



🧹 Data Cleaning & Transformation (SQL)
✔ Converted messy date formats

birthdate, hire_date, termdate cleaned using STR_TO_DATE

Corrected empty termination dates → '0000-00-00'

Converted all fields to proper DATE datatype.

✔ Calculated new features

age using TIMESTAMPDIFF()

Employment tenure (years)

Age groups (23–25, 26–34, 35–44, 45–55, 56–64, 65+)

✔ Cleaned invalid & duplicate records

Removed employees younger than 18

📈 KPIs Generated (SQL)
📌 1. Total Employees

22,000

📌 2. Active Employees (No termination)

18,000

📌 3. Attrition Rate

94.78% (Based on termination distribution)

📌 4. Average Employee Age

41 Years

📌 5. Avg Length of Employment

8 Years


Summary of Findings

Gender Distribution: There are more male employees than female employees across the company.

Race/Ethnicity: White employees are the most dominant, while Native Hawaiian and American Indian employees are the least represented.

Age Distribution: The youngest employee is 20 years old and the oldest is 57 years old.

Age Groups: Employees were grouped into five age ranges: 18–24, 25–34, 35–44, 45–54, and 55–64. The largest groups are 25–34 followed by 35–44, while 55–64 is the smallest group.

Location Distribution: A large number of employees work at the headquarters compared to remote locations.

Employment Length: The average length of employment for terminated employees is approximately 7 years.

Department Gender Distribution: Gender distribution across departments is fairly balanced, though males slightly outnumber females in most departments.

Department Turnover: Marketing has the highest turnover rate, followed by Training. The lowest turnover rates are in Research & Development, Support, and Legal departments.

State-wise Distribution: Ohio contributes a large number of employees compared to other states.

Workforce Trends: The net change in employee count has increased over the years, indicating growth.

Average Tenure by Department: Overall average tenure is about 8 years. Legal and Auditing departments have the highest average tenure, while Services, Sales, and Marketing have the lowest.


Business Impact:
This analysis helps HR in retention planning, succession planning, diversity initiatives, workforce planning, and optimizing remote vs headquarters roles. The findings were visualized in a Power BI dashboard for easy monitoring and decision-making.*
