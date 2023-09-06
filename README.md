# Crowdfunding ETL Project
Welcome to the Crowdfunding ETL (Extract, Transform, Load) Project! This repository contains code and instructions for performing ETL on crowdfunding data. The aim is to extract data from various sources, transform it into a structured format, and load it into CSV files for further analysis.

## Project Structure

```bash
Crowdfunding_ETL/
│
├── Resources/
│   ├── crowdfunding.xlsx
│   ├── contacts.xlsx
│   ├── category.csv
│   ├── subcategory.csv
│   ├── campaign.csv
│   ├── contacts.csv
│
├── Crowdfunding_ETL.ipynb
├── README.md
```

## ETL Process Overview
## Extracting Data
The project utilizes Pandas to extract data from the provided Excel files: crowdfunding.xlsx and contacts.xlsx.

## Transforming Data
## Category and Subcategory Transformation

1. Extract categories and subcategories from the combined column.

2. Create category and subcategory DataFrames.

3. Export them as category.csv and subcategory.csv.

## Campaign Transformation

1. Rename columns for clarity.

2. Convert data types and format date columns.

3. Merge with category and subcategory DataFrames.

4. Drop unnecessary columns.

5. Export the cleaned DataFrame as campaign.csv.

## Contacts Transformation

1. Extract contact information from contacts.xlsx.

2. Create a DataFrame containing contact details.

3. Export it as contacts.csv.

## SQL

In PostgreSQL 12, using pgAdmin, a database named "crowdfunding_db" was established. Following that, four tables were generated, and data from corresponding CSV Database Setup and Table Creation:

In PostgreSQL 12, using the pgAdmin tool:
1. A database named "crowdfunding_db" was established.
2. Four tables were generated.
3. Data from corresponding CSV files was imported into these tables.
4. Primary Key Determination:

 To identify a unique attribute for each table:
1. A check for uniqueness was carried out.
2. Foreign Key Establishment:

To establish relationships between the tables:
1.Foreign keys were designated.
2.Note on Key Implementation Timing:

It's important to note:
1. Primary and foreign keys were applied after the tables were created and data was imported.
2. This was done to prevent potential errors stemming from the initial selection of primary keys.

Entity Relationship Diagram (ERD) Creation:

In a subsequent step:
Data from the tables created earlier, including both primary and foreign keys for each table, was used as input for quickDBD.
The result was the construction of an Entity Relationship Diagram (ERD).



## Usage

1. Ensure you have the necessary dependencies installed: Pandas, NumPy.

2. Place crowdfunding.xlsx and contacts.xlsx in the Resources/ directory.

3. Run the Crowdfunding_ETL.ipynb notebook to execute the ETL process.

4.Transformed data will be saved in the Resources/ directory as CSV files.

## Contributors

This project was made possible by the following contributors:

Sheena Knott, Jasmine Blakely, Jesus A Paz
