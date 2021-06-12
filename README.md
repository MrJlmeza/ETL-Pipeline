# ETL-Project

### **Project 2 - Extract, Transform, Load (ETL) Process**

##### Group 5: Angela Leonard, Brian Havard, Vito Jacano, Joge Meza, Tanmay Patel
##### Submission Date: June 12th, 2021



##### **Data Sources:**

https://data.world/us-ed-gov/000f1c44-a0b8-402f-8d4b-a4b66dfb7734

https://collegescorecard.ed.gov/https://collegescorecard.ed.gov/data/documentation/



| **Task Number** | **Task Name**              | **Description**                                              | Assigned To   |
| --------------- | -------------------------- | ------------------------------------------------------------ | ------------- |
| 1               | Repo Creation & Management | Create Repo, manage repo, ensure proper code and documentation in place | Jorge         |
| 2               | Data Definition            | Go through spreadsheets and decide the type of data to bring in. | Group         |
| 3               | Data Download              | Download data and ensure everyone has access to the same CSVs | Group         |
| 4               | Data Transformation        | Cleanup data in Pandas - remove unnecessary columns based on task 2; prep data into dataframes to be imported into database | Angela, Jorge |
| 5               | Database Schema Creation   | Create schema; assign table names, primary keys, foreign keys, ensure referential integrity | Vito, Brian   |
| 6               | Data Load                  | Load data into database                                      | Tanmay        |
| 7               | Data Test & Validation     | Validate data within CSVs has made it all the way to the database | Tanmay        |
| 8               | Documentation              | Create documentation for the entire project                  | Group         |

##### Github Repo:

**https://github.com/MrJlmeza/ETL-Project

##### **Data Definition:

College Scorecards make it easier for students to search for a college that is a good fit for them. They can use the College Scorecard to find out more about a college's affordability and value so they can make more informed decisions about which college to attend.
Data was broken to multiple .csvs based on logical grouping of data. Our task was to go through the CSVs and identify data points to bring into our database. The files themselves have somewhere between 150+ to 200+ columns. Identifying which data to bring in is critical from an insights gathering perspective.

##### Data Transformation:

The goal is to create appropriate dataframes of meaningful data that aligns well with the table schema we decided to create. This required us to remove unnecessary columns, merge columns from different .csv files into logically and more acutely grouped data. Furthermore, in parallel, we decided on the best schema to proceed with so the transformation can be meaningful. 

The team decided on certain columns to extract out of the initial large dataset. We merged the multiple dataframes into a singular master dataframe to load necessary data.

##### Database Schema Creation:

Understanding how best to group data into logically related data tables. The goal was to provide meaning to grouping and breaking down data, along with maintaining referential integrity amongst all of our tables. This schema development will help define our transformational methods within Pandas that will help proper data loads without incurring any issues.

##### Data Load:

Once Data Transformation is complete, final step was to load all of the data into our database. Ensuring data transformation and schema creation rules were synced ensured proper loading of data. 



##### Data Test & Validation:

We added a step to ensure data integrity was present. Proper testing and validation ensured that we didn’t negatively transform data into the database. We picked certain schools (spot check) and reviewed the final data matched data found in the csv files. 

#### Technical Report:

1) Download Repository

2) Within the "Data" folder, download the appropriate .csv's needed to execute the project

3) Create database named "etl_db" within postgresql

4) Execute steps within the Jupyter Notebook "data_cleanup.ipynb"
