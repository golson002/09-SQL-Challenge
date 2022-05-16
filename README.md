# SQL Challenge- Employee Database

## **Motivation/Reason for Analysis:**
The motivation for the analysis of the data files in the Employee Database SQL Challenge was to assess my proficiency with SQL + PGAdmin and my ability to perform data modeling, engineering, and analysis with the given tools. 

* In this exercise, I took the position/perspective of a recently hired data engineer who has been tasked with a research project analyzing my company's employees from 1980-1990.  All that remains of the database of employees from this period are six CSV files.

## **Approach:**
* First I analyzed the six csv files in Excel and drew an entity-relationship diagram (ERD) in QuickBase Diagrams to visualize the relaionship between the files.  ([http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com)).

* Next, I took the outline from the ERD and created table schemas in SQL for each of the six csv files, utilizing primary, foreign, and composite keys. I ran each schema in PGAdmin to ensure they were created properly and populated the tables by importing the csv files. 

* With my schemas created and populated, I was ready to prepare an analysis of the data by answering eight data analysis requests from my 'boss':

    1. List the following details of each employee: employee number, last name, first name, sex, and salary.
    2. List first name, last name, and hire date for employees who were hired in 1986.
    3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
    4. List the department of each employee with the following information: employee number, last name, first name, and department name.
    5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
    6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
    7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
    8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

* To answer these questions, I created queries and subqueries that leveraged SQL joins and SQL commands such as SELECT to only view certain data, WHERE to filter data, GROUP BY to aggregate data/filtered data, and ORDER BY to display data/filtered data in ascending or descending order. 

* I also completed a bonus analysis section after becoming suspicious that the data provided was spurious. 
    *  I figured title + salary were the best indicators of validity of the database, so I created a connection to my database in PGAdmin from a jupyter notebook. I then used the pandas and matplotlib libraries to analyze the salary data- reading in the sql schemas and making dataframes, then creating a histogram to visualize the salary ranges of the employees. I then merged three table schemas (employees, salaries, and titles) and grouped the merged table by title. I found the average salary per title and plotted the table on a bar chart. 

## **Takeaways/Lessons Learned:**
* Based on the bonus analysis, I would advise any user to proceed with the database cautiously as the analysis showed 'Senior Staff' and 'Staff' as the top two highest paid titles and 'Engineer' and 'Senior Engineer' as the bottom two lowest paid titles. We may have an error in our database or mislabeled titles in our file as this relationship is not common at most companies.

* While data modeling would be an easy step to skip in a time crunch, it is an essential first step in data analysis to prevent significant rework down the road and to help the user understand the data they are working with and how the files relate. Based on my experience with this exercise, had I not understood the relationship between the columns in the different files, I likely would have created the table schemas in the wrong order, thereby creating errors in how my primary, foreign, and composite keys connected and ultimately leading to an incorrect analysis.  

## **Further Analysis/Work:**
* There are certainly many other interesting relationships to analyze from this database including:
    * Employee sex vs. Salary
    * Number of employees in each department and sex breakdown of employees within each department
    * Manager salary in each department relative to average salary of employees in that department
    * Hire date (year) vs. Salary
    * Etc. 