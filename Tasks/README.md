# Data Engineering and Advanced SQL Tasks
This folder contains two discrete tasks showcasing core data engineering (ETL with PySpark) and advanced data analysis (Complex SQL) capabilities.

# 1. Task1Python.ipynb (PySpark ETL Job)
This project implements a small-scale Extract, Transform, Load (ETL) pipeline using PySpark.

| Phase     | Description |
|-----------|-------------|
| Extract   | Reads a raw CSV file containing electric chargepoint data. |
| Transform | Groups the data by `CPID` (Chargepoint ID). |
| Transform | Calculates the **maximum** and **average** duration of the charging sessions (`PluginDuration`) for each chargepoint. |
| Load      | Prints a preview of the transformed results (`chargepoint_id`, `max_duration`, `avg_duration`). |

**Skills Demonstrated:** PySpark, ETL Process Design, Big Data Aggregation, Data Transformation.

# 2. Task2PostgreSQL.sql (Advanced Financial SQL)
This SQL script solves a business logic problem by calculating the net balance of an account after factoring in transaction fees.

**Business Logic**

The script determines a customer's monthly account fee for the year 2020 based on their debit/withdrawal activity:

 - Fee Waived (0): The fee is waived if the customer has 3 or more negative transactions and the absolute value of the total negative amount is $100 or greater in a given month.

 - Standard Fee ($5): A $5 fee is applied if the criteria for waiving the fee are not met.

The final result is the total balance (Total Transaction Amount - Total Annual Fees).

**Technical Implementation**
 - Common Table Expressions (CTEs): Uses three WITH clauses (monthly_fees, all_months, final_fees, total_txn, total_fees) to modularize complex logic and calculate the rolling final balance.

 - Window/Series Functions: Uses DATE_TRUNC and generate_series to ensure every month of the year is accounted for, even if no transactions occurred.

 - Conditional Logic: Leverages CASE statements and aggregation (COUNT, SUM, ABS) to apply the fee-waiving business rules.

**Skills Demonstrated:** Advanced PostgreSQL, Complex CTEs, Financial Logic Implementation, Date/Time Manipulation.
