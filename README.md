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

## Usage

1. Ensure you have the necessary dependencies installed: Pandas, NumPy.

2. Place crowdfunding.xlsx and contacts.xlsx in the Resources/ directory.

3. Run the Crowdfunding_ETL.ipynb notebook to execute the ETL process.

4.Transformed data will be saved in the Resources/ directory as CSV files.

## Contributors

This project was made possible by the following contributors:

Sheena Knott, Jasmine Blakely, Jesus A Paz
