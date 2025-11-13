n8n Automation Demo

This project demonstrates how I use n8n to build automated data workflows for ETL-style tasks.  
The example workflow ingests job listings data, performs cleaning and transformation steps, and exports structured outputs.

---

Workflow Overview

The `Demo.json` file contains an n8n workflow that performs:

1. Data Ingestion
- Loads job posting data from CSV
- Normalizes fields for downstream use

2. Data Cleaning
- Removes malformed rows  
- Standardizes company and job title fields  
- Cleans salary strings and extracts numeric ranges  

3. Transformations
- Converts salary text to numeric columns  
- Maps roles to categories  
- Adds derived fields for analysis  

4. EDA Output
- Saves exploratory data files (`eda_data.csv`)
- Generates cleaned datasets for modeling or dashboards  

5. Automation Flow
- Fully reproducible workflow via n8n JSON  
- Can be imported into any n8n instance

---

Files

- Demo.json — Complete n8n workflow  
- glassdoor_jobs.csv — Raw sample data  
- cleaned_glassdoor_jobs.csv — Post-cleaning dataset  
- salary_data_cleaned.csv — Salary extraction example  
- eda_data.csv — EDA-ready table

---

Why This Matters

This demo shows my ability to design:
- No-code/low-code automation  
- ETL-style workflows  
- Data cleaning and validation pipelines  
- Reproducible transformations  
- Multi-step orchestration without manual intervention  

These patterns extend naturally to:
- test automation  
- ETL pipelines  
- BI data preparation  
- API workflows  
- operational analytics  
