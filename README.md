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

![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Union%20All%20Images/Terminology.png) 

### Steps to build a data warehouse

1. This time I will merge two data from two databases into a data warehouse using SSIS in Visual Studio. So I created three databases, two databases as data sources with the names db_sales1 and db_sales2, the third database as the data warehouse.

2. Create tables in all three databases with the exact same names, columns and data types, then create a relationship diagram for db_sales1 and db_sales2.

   ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Union%20All%20Images/Diagram%20Relasi%20db.sales1.png)

3. Insert data in each table db_sales1 and db_sales2 as data sources (This time I will only input random data as an example of building a database)

4. Launch Visual Studio 2019

5. Select Create a new project, choose Integration Service Project and click Next. Configure your new project and click Create.

6. Drag the Data Flow Task to the Control Flow view, and double-click on the selected Data Flow Task to build the Data Flow.

    ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/Control%20Flow.png)

7. Drag OLE DB Source from SSIS Toolbox to the data flow view, rename it as db_sales1, double click on it to edit the OLE DB Source. Perform the same steps on the OLE DB Source for db_sales2.

   ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/OLE%20DB%20Source%20Editor%20db_sales1.png)

   ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/OLE%20DB%20Source%20Editor%20db_sales2.png)

8. Drag OLE DB Destination from SSIS Toolbox to the data flow view, double click on it to edit the OLE DB Destination. 

   ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/OLE%20DB%20Destination%20dw_overallsales.png)

9. Since I will be merging two databases only, I will use the Merge tool in the SSIS Toolbox. We have to use the Sort tool every time we do a Merge in SSIS Visual Studio. We can also use the Union All tool, the difference is that Union All can combine two or more databases while the Merge tool can only combine two databases. 
   
10. Drag twice the Sort tool from the SSIS Toolbox for db_sales1 and db_sales2, and double click to perform sorting.

    ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/Sorting.png)

12. Drag Merge from SSIS Toolbox, and double-click to edit.

13. After finishing editing the Data Source, Data Destination, and Sorting, the next step is to connect the blue lines on each data flow.

   > Data Flow to perform Merge looks like the image below:

  ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/Data%20Flow.png)

  > Data Flow to perform Union All looks like the image below:

  ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Union%20All%20Images/Data%20Flow%20Task%203.png)  

12. The last step is to execute the package. If the execution is successful, it will look like the image below:

 ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/Package%20Execution%20Completed%20with%20Success.png)   

- This is the data warehouse using Merge

 ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Merge%20Images/Final%20Data%20Warehouse.png)   

- This is the data warehouse using Union All

   ![image alt](https://github.com/Biancaninna/ETL-Data-Warehouse-Using-SQL-Server-Integration-Services-SSIS--Visual-Studio/blob/452dee0aa4c41f320f199e1e250dfd8b935c4c64/Union%20All%20Images/Final%20Data%20Warehouse%20For%20Customers%20Table.png)   
  

### Finally, the process of building a data warehouse is complete, you can do the same steps for each table in the database.
