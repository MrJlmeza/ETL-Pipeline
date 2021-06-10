# ETL-Project

**Project 2 - Extract, Transform, Load (ETL) Process**Group 5: Angela Leonard, Brian Havard, Vito Jacano, Joge Meza, Tanmay PatelSubmission Date: June 12th, 2021



**Data Sources:**https://data.world/us-ed-gov/000f1c44-a0b8-402f-8d4b-a4b66dfb7734https://collegescorecard.ed.gov/https://collegescorecard.ed.gov/data/documentation/



![image-20210609200607371](C:\Users\tpatel\AppData\Roaming\Typora\typora-user-images\image-20210609200607371.png)

Github Repo:**https://github.com/MrJlmeza/ETL-Project
**Data Definition:**College Scorecards make it easier for students to search for a college that is a good fit for them. They can use the College Scorecard to find out more about a college's affordability and value so they can make more informed decisions about which college to attend.
Data was broken to multiple .csvs based on logical grouping of data. Our task was to go through the CSVs and identify data points to bring into our database. The files themselves have somewhere between 150+ to 200+ columns. Identifying which data to bring in is critical from an insights gathering perspective.
**Data Transformation:**The goal is to create appropriate dataframes of meaningful data that aligns well with the table schema we decided to create. This required us to remove unnecessary columns, merge columns from different .csv files into logically and more acutely grouped data. Furthermore, in parallel, we decided on the best schema to proceed with so the transformation can be meaningful. 
**Database Schema Creation:**Understanding how best to group data into logically related data tables. The goal was to provide meaning to grouping and breaking down data, along with maintaining referential integrity amongst all of our tables. This schema development will help define our transformational methods within Pandas that will help proper data loads without incurring any issues.
**Data Load:**Once Data Transformation is complete, final step was to load all of the data into our database. Ensuring data transformation and schema creation rules were synced ensured proper loading of data. 
**Data Test & Validation:**We added a step to ensure data integrity was present. Proper testing and validation ensured that we didn’t negatively transform data into the database. We picked certain schools (spot check) and reviewed the final data matched data found in the csv files. 