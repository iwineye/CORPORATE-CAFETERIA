# CORPORATE-CAFETERIA
An end to end Data Analyst Project that deals with the operations involved in a cafeteria of a corporate company.
![Alt text](<PROJECT LIFECYCLE.PNG>)
## DESCRIPTION
A Corporate company leases its premises to a restaurent for free.The terms of agreement is to provide its services to its employees for free. And the company covers the expenses of their employees.Payment of which is done every three months.As part of the company's goodwill for its employee they are willing to pay the amount of their employees spending at the cafeteria upto a certain limit.Beyond which the employee has to pay from his own pocket. Therefore having a proper record of the sales is absolutely necessary.There the company offers its own resources to develop the database and the mechanism to track the whole process to make things smooth. 

Each purchase of the employee is tracked using their Employee ID which is reflected in the sales table that helps track the money it owes in final settlement of that quarter.
![Alt text](<WORK FLOW.PNG>)

## CONTENTS OF THE PROJECT
1. [PYTHON SCRIPT TO GENERATE SALES DATA](PYTHON-SCRIPT-TO-GENERATE-SALES-DATA)
2. [DATABASE Design in MYSQL](#2database-design-in-mysql)
3. [SQL QUERIES and analysis of data in DATABASE](#3sql-queries-and-analysis-of-data-in-database)
4. [Python AUTOMATION script to access and QUERY MYSQL DATABASE](#4python-automation-script-to-access-and-query-mysql-database).
5. [POWER BI DASHBOARD](#5power-bi-dashboard)
6. [REPORT of employee spending in cafeteria and cost to company report in EXCEL using PIVOT TABLES](#6report-of-employee-spending-in-cafeteria-and-cost-to-company-report-in-excel-using-pivot-tables) 

### 1.PYTHON SCRIPT TO GENERATE SALES DATA
A Clean code that can generate any number of rows of data between any given period of time is used to create the sales data for this project.
Here we used this to generate three months of sales data.A Randomised data gives unpredictable results and room for different interpretations analysed everytime.

### [2.DATABASE Design in MYSQL](SQL/SQL-QUERIES.sql)

The project  database is built according to the back end system ready for deployment. The entire database is built according to the following ER DIAGRAM

![EER Diagram](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/37441353-47a4-4919-952d-097da5a9b9af)

### [3.SQL QUERIES and analysis of data in DATABASE](SQL/KPI.sql)

The data is then uploaded to the Database

Various queries are done in MYSQL such as Joining different tables and Merging

### [4.Python AUTOMATION script to access and QUERY MYSQL DATABASE](AUTOMATION/KPI_Generator.py)

Going a step further to make regular monitoring of data without hastle and to obtain basic performance metrics. A simple code in python is written to access the database and perform queries automatically with just one click.

### [5.POWER BI DASHBOARD](POWER-BI/Dashboard.pptx)

Once the data is imported to POWER BI DASHBOARD from the database. A comprehensive analysis of the data is done through which we are able to study the following

   * SALES INSIGHTS
   * INVENTORY REQUIREMENTS AND PROCUREMENT COSTS
   * QUARETERLY BALANCE STATEMENT (P/L) ANALYSIS
### SALES OVERVIEW 

A complete outline picturing of the entire sales  obtained from orders data.
![Sales OverviewJPG](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/4e87b05e-9b36-478c-b5ba-ccb2ba4f63ce)

### SALES ANALYSIS
Identification of ideal products that are best performing.Classification of sales and finding the ideal preferences based on gender.
![Sales Analysis](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/cea4aca0-7125-43e6-ac56-9c5e60ce7c22)

### INVENTORY ANALYSIS
Using stock data from database an estimation in the cost of procurement of each product in the inventory is done. Therefore we can monitor the cost of procurement at any point of time accessing the database.
![Inventory Analysis](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/acc5476d-1688-4b5a-bc20-8857b83a1e6e)



### BALANCE STATEMENT

From the data we calculate the total sales and the procurement cost during that quarter and other expenses in the form of salaries to calculate final profit from the money the company owes which is refunded to the restaurent owner. 
![Quarterly Balance Sheet](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/c26093ce-d558-43fa-886c-ee7c6c961430)


## [FINAL REPORT AND RECOMMENDATIONS](POWER-BI/SALES-REPORT.pdf)

Do check the comprehensive report above.

* Identified customer preferences in terms of gender.  
* Recommended pricing based on sales and inventory levels
* Recommended introducing new items based on the sales pattern of specific items.



## 6.REPORT of employee spending in cafeteria and cost to company report in EXCEL using PIVOT TABLES.

The company agreed the cap for each employee a total of 1500/month or 4500/quarter. Therefore one need to calculates the individual spending of each employee. An Excel report is buillt from the data to identofy those who have spent beyond the company limit.This is done using PIVOT TABLES and employees who are overdue are highlighted in the report.

For previous Quarter, management owe's the restaurent a total Rs 10,34,770.2 and the combined over limit of employees Rs1,08,246 is payed by the employees which can be deducted from the respective employee based on their Employee ID from the sheet.

![REPAYEMENT](https://github.com/iwineye/CORPORATE-CAFETERIA/assets/96835772/2f5b253c-54a3-4b9b-82ba-d7f6b751e14d)


