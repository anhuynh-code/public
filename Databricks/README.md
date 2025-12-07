# Databricks Demo – Customer Orders Data Model & CTE Analytics  
**Author:** Anh Huynh  
**Purpose:** Databricks Pre-Work Assignment – Data Model, SQL CTE Query, and Medallion Architecture  

---

## 📌 Overview  
This Databricks demo notebook implements a complete, end-to-end mini analytics workflow:

- **Data model design** for a customer order system  
- **Delta table creation** using Databricks SQL  
- **Sample data ingestion**  
- **A multi-CTE query** to compute the *most sold product in the last month*  
- **Medallion architecture explanation (Bronze → Silver → Gold)**  
- **Interview-ready talking points**  

This notebook follows engineering best practices and is fully reproducible.

---

## 🗂️ Project Structure


---

## 🧱 1. Data Model (ERD Summary)

- **customers** → 1:N → **orders**  
- **orders** → 1:N → **order_items**  
- **products** → 1:N → **order_items**  

**Dual status tracking:**  
- `order_items.line_status` – item-level shipping status  
- `orders.order_status` – derived from item statuses (e.g., all delivered → Completed)

This design supports:  
- Partial shipments  
- Accurate analytics  
- Pipeline-friendly data modeling  

---

## 🗄️ 2. Delta Tables Created

The notebook creates the following Delta tables under the `retail_demo` schema:

- `customers`
- `products`
- `orders`
- `order_items`

Each table includes timestamps, relational keys, and clean, analytics-friendly schemas.

---

## 🔢 3. Sample Data

A small synthetic dataset is inserted for demonstration, covering:

- Multiple customers  
- Products  
- Orders across different dates  
- Delivered and non-delivered line items  

The dataset allows analysts to compute product-level KPIs.

---

## 🧮 4. SQL CTE Query — Most Sold Product Last Month

A multi-layer CTE computes the top-selling product in the previous calendar month.

Key logic includes:

- Dynamic date windowing using `date_trunc` + `add_months`  
- Filtering by `line_status = 'DELIVERED'`  
- Aggregation at the product level  
- `DENSE_RANK()` to support ties  

Example output:

| product_id | product_name | total_quantity_sold |
|------------|--------------|---------------------|
| 103        | Gadget C     | 6                   |

---

## 🏗️ 5. Medallion Architecture

### **Bronze (Raw Layer)**  
- Raw ingestion of orders, customers, and product data  
- Schema relaxed; ingestion may be batch or streaming  

### **Silver (Clean Layer)**  
- Modeled Delta tables  
- Schema enforcement, normalization  
- Referential integrity between orders → items → products  

### **Gold (Business Layer)**  
- Pre-aggregated metrics  
- KPI tables for BI dashboards  
- Examples: product sales, fulfillment metrics, customer LTV  

### **Unity Catalog / Delta Lake**
- Provides governance, lineage, ACID transactions, and time travel  

---

## 🧪 6. Notebook Included

The notebook provides:

- Full SQL table creation  
- Inserts  
- CTE analysis  
- Architecture notes  
- Interview talking points  

Fully runnable on **Databricks Community Edition**.

---

## ✔️ Status  
**Complete and ready for interview demonstration.**

---

## 🙌 Author  
**Anh Huynh**  
Senior Data Analytics Engineer / Scientist  
