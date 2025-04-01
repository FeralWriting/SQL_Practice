# SQL_Practice

## Overview

Practice importing, altering, and analyzing data using SQL. The project follows an [instruction guide](https://medium.com/@Armonia1999/data-analysis-project-using-sql-to-clean-and-analyse-data-64a24e84b730) and gave me experience with MySQL, charting, and data analysis. All images are sourced from my MYSQL project, some graphs are too larger to include and will be cropped.

## Features:

### Data Importation and Configuration

The dataset used is the Call Center dataset from Real World Fake Data formatted as a CSV file. However, the specific set cannot be found online anymore, so it is available to download in this repository. This dataset includes information about call center phone calls like locations, times, issues, and customer satisfaction.

After importing the spreadsheet, I clean up the data so the columns can have the right datatype and rows can be formatted correctly.

### Analysis and Results

In order to get an overview of the data I view the totals and find out how many distinct answers are recorded for the qualitative data. This allows me to notice relevant information like there being only four call center locations (call_center) and the satisfaction survey (sentiment) being a list from Very Negative to Very Positive. This gives me a scope for the data before I group it.

![image](https://github.com/user-attachments/assets/6094c16f-0d31-4ac1-acaf-21b466dee8ed) ![image](https://github.com/user-attachments/assets/bf7a8fee-8504-483e-bd76-1e81cbfde488)

I then check the breakdown by calculating the rates of appearance for each answer. This data manipulation is important because it starts to detail information about the customers and what they prefer instead of the data itself. This can show clearly why most people call (reason) or how they communicate (channel).

![image](https://github.com/user-attachments/assets/4974524f-64f4-4a35-a50d-1bc7eeb04317) ![image](https://github.com/user-attachments/assets/6ee212c5-891c-4c43-b75b-94f88b9d9966)

Finally, I compare the data in relation to each other, to determine how customers tend to behave and feel in certain conditions. This can be seen in why people call in different states and how long the call was based on how people leave the call feeling. This type of data analysis gives a greater understanding of the subjects and their needs.

![image](https://github.com/user-attachments/assets/4f90f8b6-5b52-4020-a422-c6b0304041ce) ![image](https://github.com/user-attachments/assets/5400c5bd-178b-418a-b379-60c3552e1fcc)

### Issues

I did not run into many issues on this short project, however importing the data gave me a problem initially. This is because I was changing my column datatypes too early, since I wanted to have columns like the call_timestamp or csat_score to be imported as datetime and int respectively. Unfortunately, because there were null values/filler inputs, none of my data would import. To fix this, I imported the data as text first instead, then cleaned up the data and changed the datatype.

