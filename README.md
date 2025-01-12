## What is the ETL process in Data Warehouse?

ETL (Extract, Transform, and Load) is the process of combining data from various sources into a data warehouse: 
1. Extract: Retrieving data from various sources.
2. Transform: Transforming raw data into a structured and easy-to-understand format.
3. Load: Load the transformed data to a new destination.

ETL is used to store old or combined data that will be analyzed and used to make business decisions. ETL can help save time and effort as there is no need to import data manually. 

Data warehouse is a system that functions as a center for data integration from various sources within an organization. Data that is integrated in the data warehouse facilitates the distribution and accessibility of data to related parties within the company.

#### Here I will explain each step that I did in the ETL data warehouse process using SQL Server Integration Service (SSIS) Visual Studio.
#### Software used
1. SQL Server Management Studio 2022
2. Visual Studio 2019

![image alt]() 

### Steps to build a data warehouse

1. For example, I will combine two databases in SQL Server Management Studio, then I will integrate them into one Data Warehouse using Visual Studio. So the first step is to create three databases in SSMS, the first and second databases as data sources which I will name them db_sales1 and db_sales2, and the third database as the data destination which I will name it dw_overallsales.

2. Create tables in all three databases with the exact same names, columns and data types, then create a relationship diagram for each database.

   ![image alt]()

3. Insert data in each table db_sales1 and db_sales2 as data sources (This time I will only input random data as an example of building a database)

4. Launch Visual Studio 2019

5. Select Create a new project, choose Integration Service Project and click Next. Configure your new project and click Create

6. Drag the Data Flow Task to the Control Flow view, and double-click on the selected Data Flow Task to build the Data Flow.

    ![image alt]()

7. 
   
