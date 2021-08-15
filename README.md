# Pewlett-Hackard-Analysis

## Overview of the analysis: 
Our purpose for this analysis was to help Pewlett Hackard leadership assess the impact of upcoming retirements, and start a mentorship program. To do so, we made several SQL queries to break out the database into retiring employees & their titles, then a separate query on employees who would be eligible for the mentorship program.

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
- The first table we created pulled all retiring employees by birth date, as well as their titles. However, due to promotions, this list included duplicate employee entries
- The second table we created removed duplicates, by using the "DISTINCT ON" function on employee number
- The third table we created counted the number of retiring employees by title, see image below
- The fourth and final table we created pulled active employees born in 1965, as these would be eligible for the mentorship program

![Retiring_Count](https://user-images.githubusercontent.com/86527135/129489976-39c4062d-16da-4e15-af4b-e816877286c3.PNG)

## Summary: 
### How many roles will need to be filled as the "silver tsunami" begins to make an impact? 
90,398 (count of employees in unique_titles.csv)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Currently, there are only 1,549 mentorship eligible employees. Due to the large discrepancy between retiring employees and mentorship eligible ones, there are likely not enough mentors to cover the next gen employees.

### Additional queries or tables that may provide more insight into the upcoming "silver tsunami."
- In addition to knowing the titles retiring, it's important to look at departments as well. A table of retiring departments would show if some departments will be more affected by the "silver tsunami" than others.
- To assess the financial impact of the "silver tsunami", we could also pull a sum of salaries by title or department.


