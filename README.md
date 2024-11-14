# Azure Data Engineering Pipeline: Real-Time Project

This project demonstrates an end-to-end data engineering pipeline on Azure, designed to address a hypothetical business scenario and deepen my understanding of data workflows.

## Project Summary

In this project, I built a comprehensive data pipeline using Azure services to address a business need for insights on customer demographics and sales trends. Data from an on-premises SQL database is ingested, transformed, and visualized in a Power BI dashboard. This dashboard provides key metrics on gender distribution and product category performance, allowing for data exploration by date, product category, and gender.

## Business Requirements

The business identified a need for improved insights into customer demographics—specifically, gender distribution and its impact on purchasing behavior. Key objectives include:

- **Sales by Gender and Product Category**: Dashboard metrics for total sales, revenue, and customer demographics.
- **Data Filtering**: Flexible filtering options by product category, gender, and date.
- **User-Friendly Interface**: An intuitive dashboard for stakeholders to interact with key metrics.

## Solution Outline

To meet these needs, the project includes the following phases:

### Data Ingestion
1. Extract customer and sales data from an on-premises SQL Server.
2. Load the data into Azure Data Lake Storage (ADLS) using Azure Data Factory (ADF).

### Data Transformation
1. Clean and process data using Azure Databricks, creating structured layers: Bronze (raw data), Silver (cleansed), and Gold (aggregated insights).

### Data Storage and Visualization
1. Load the transformed data into Azure Synapse Analytics.
2. Use Power BI to create interactive dashboards, enabling business users to view sales and demographic insights.

### Automation
1. Automate the pipeline to refresh daily, ensuring up-to-date insights.

## Technology Stack

- **Azure Data Factory**: Orchestration of data movement and transformation.
- **Azure Data Lake Storage**: Storage for raw and processed data.
- **Azure Databricks**: Data transformation and processing.
- **Azure Synapse Analytics**: Data warehousing and SQL-based analytics.
- **Power BI**: Data visualization and reporting.
- **Azure Key Vault**: Secure management of credentials.
- **SQL Server**: On-premises database as the data source.

## Steps to Set Up

### Prerequisites
- Azure account with sufficient credits
- Access to an on-premises SQL database

### Step 1: Azure Environment Setup
- Create a resource group and provision necessary Azure services (Data Factory, Data Lake Storage, Databricks, Synapse Analytics, Key Vault).

### Step 2: Data Ingestion
- Set up SQL Server and restore the AdventureWorks database.
- Use ADF to copy data from SQL Server to the Bronze layer in ADLS.

### Step 3: Data Transformation
- Configure Databricks to access ADLS.
- Perform data cleaning and aggregation in Databricks, moving data from Bronze to Silver to Gold layers.

### Step 4: Data Storage and Reporting
- Load aggregated data into Synapse Analytics.
- Create Power BI dashboards to visualize business metrics.

### Step 5: Automation and Monitoring
- Schedule the pipeline to run daily in ADF.
- Use monitoring tools to track the success of pipeline runs.

### Step 6: Security and Access Control
- Manage permissions through Azure Entra ID (formerly Azure Active Directory).

### Step 7: Testing
- Insert new data in SQL to verify the end-to-end pipeline flow and ensure updated reports in Power BI.

## Conclusion

This project provides a structured pipeline for analyzing customer demographics and their impact on sales performance. With automated data flows, stakeholders have access to real-time, actionable insights.
