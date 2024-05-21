# Crowdfunding_ETL

### Collaborators:
- Muzaffar Amin
- James Radford
- Charles Morgan
- Erin Nicol

In our team project, we developed an ETL (Extract, Transform, Load) pipeline using Python and Pandas to manage data on crowdfunding projects. The processed data was then loaded into a newly created database via SQL. The following flowchart summarises our ETL process:

![ETL Process](https://github.com/Muz32/Crowdfunding_ETL/blob/b6a35acc6c787f6bf6c38a4133a31804a838106b/ETL%20process.png)

Steps of our ETL process:

## 1.Extract
   We read data into Pandas DataFrames from the following Excel files: `crowdfunding.xlsx` and `contacts.xlsx`.

## 2.Transform
   New columns were created, renamed and unwanted columns dropped using the extracted data. The datatype for the columns were also formatted to the ideal datatypes. The tools and techniques used for data transformation included:
   - `split`
   - `numpy arange`
   - List comprehensions
   - `astype`
   - `datetime`
   - `pandas merge`
   - DataFrame functions

   As a result, we created four new DataFrames: `category_df`, `subcategory_df`, `campaign_cleaned`, and `contacts_df_clean`. These were then exported to CSV files named `category.csv`, `subcategory.csv`, `campaign.csv`, and `contacts.csv`.
## 3.Load
We created an Entity Relationship Diagram (ERD) using [Quick Database Diagrams](https://www.quickdatabasediagrams.com/), which was saved in the repository as ERD_sketch.jpeg. Using the ERD, we defined the table schema and saved it as crowdfunding_db_schema.sql.
We then created a new PostgreSQL database. Using the database schema, we created tables for each CSV file and imported the data into their respective tables.


