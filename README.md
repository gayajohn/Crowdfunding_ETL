# Project 2 - ETL Mini Project

## Team 9 
- Gayatri John
- Sanjeev Chiplunkar

## Project Objective
The following project extracts, transforms and loads data on crowdfunding campaigns. We built an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After we transformed the data, we exported four CSV files and used the CSV file data to map out an ERD (entity relationship diagram), which was used to buikd the table schema on SQL. Finally, we imported the CSV file data into a Postgres SQL database, and ensured that the data loaded properly.

## Table of Contents

- Project Deliverables:

  - ETL_Mini_Project_GJohn_SChiplunkar.ipynb, the script for the ETL process
  - Crowdfunding_ERD.png, the ERD for the data
  - crowdfunding_db_scheme.sql, the script to create table schemata to load the data on SQL
  - Resources folder that contains:

    Data Sources: crowdfunding.xlsx ang contacts_raw.xlsx

    Generated Dataframes: campaign.csv, category.csv, subcategory.csv and contacts.csv

- Additional Folders:

  -  Gayatri - final work & Sanjiv - final work folders, containing individual scripts
  -  Screenshot SQL: screenshots of data loaded on SQL
  
## Raw Data Sources
- crowdfunding.xlsx
  
  This .xlsx file contained campaign data which was normalized in order to create category, subcategory and campaign dataframes
  

- contacts.xlsx

  This .xlsx file contained contact data which was normalized in order to create a contacts dataframe
 

## Project Sections

- Creating the Category and Subcategory DataFrames

  Extract: extracted data from crowdfunding.xlsx about category and subcategory information.

  Transform: data normalized to generate category and subcategory dataframe, including generating primary keys.

  <img width="100" alt="image" src="https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/5e30a9e8-9315-41a1-880c-240abfca3a64">
  <img width="134" alt="image" src="https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/5c90cb07-c4ab-4e86-9d16-618140556fda">
  
  
- Creating the Campaign DataFrame

  Extract: extracted campaign data from crowdfunding.xlsx, keeping only relevant columns, and changing column names as required.

  Transform: changed column datatypes as needed, and merged with category and subcategory dataframes, using foreign keys.

  <img width="440" alt="image" src="https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/81fa0009-ee84-4b55-bcf8-615b3de35fa0">
  
- Creating the Contacts DataFrame

  Extract: extracted data from contacts.xlsx

  Transform: data normalized to create 4 categories, contact_id, first_name, last_name and email using regular expression and python dicitonary methods and generate contacts dataframe.

  ![image](https://github.com/gayajohn/Crowdfunding_ETL/assets/134953074/c45469ad-7801-4737-b386-01380a9f2846)
  
  
- Creating the Crowdfunding Database

  Load: created table schemate on postgresql and imported generated data using PGAdmin

  ![campaign](https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/7274687d-9e47-4b86-9cd2-c2217dc1b97b)
  ![category](https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/0eb7e4bb-164d-417a-9992-fd872dcb81b9)
  ![contacts](https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/93fc1351-740f-4915-8c59-bdfa695a56c6)
  ![subcategory](https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/bac97298-c391-4e40-9a37-80c7eafb2051)

## Entity Relationship Diagram

![Crowdfunding_ERD](https://github.com/gayajohn/Crowdfunding_ETL/assets/135036996/eaee6565-5ac1-4d6b-96e9-aaad1109ff22)

## References
Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.
