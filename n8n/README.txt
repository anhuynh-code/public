# n8n Automation Demo

This workflow demonstrates a complete ETL-style automation using **n8n**, including:

- data ingestion from an external source  
- parsing and normalization  
- JavaScript-based cleaning and enrichment  
- schema enforcement  
- CSV export  
- email delivery of processed results  

This example is based on publicly available Glassdoor job listings and uses no sensitive data.

---

## 🚀 Workflow Components

### 1. **HTTP Request**
Fetches a CSV file from GitHub in binary format for processing.

### 2. **Spreadsheet File (Read)**
Parses the CSV into structured JSON rows.

### 3. **JavaScript Code Node**
Performs:
- title normalization  
- numeric cleaning  
- regex-based skill extraction  
- category grouping  
- derived feature creation  

### 4. **Set Node**
Defines the output schema and applies consistent field naming.

### 5. **Spreadsheet File (Write)**
Generates a cleaned CSV (`cleaned_glassdoor_jobs.csv`) for downstream use.

### 6. **Email Send**
Sends an automated email with the cleaned dataset attached.

---

## 💡 Skills Demonstrated

- ETL pipeline design  
- data cleaning and validation  
- workflow orchestration  
- automation logic  
- schema enforcement  
- email/SMTP integration  
- JavaScript transformation in n8n  

---

## 🛠️ Files in This Folder

- **Demo.json** — n8n workflow export  
- **glassdoor_jobs.csv** — source data  
- **cleaned_glassdoor_jobs.csv** — cleaned output  
- **eda_data.csv** — exploratory data output  
- **salary_data_cleaned.csv** — salary parsing example  

---

## 📌 Notes

This demo is part of a personal technical portfolio to illustrate automation, workflow design, and reproducible ETL patterns.