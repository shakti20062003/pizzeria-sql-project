# Pizzeria-SQL-Project

**Pizzeria-SQL-Project** is a relational database project designed to simulate a small pizza shop business and apply SQL queries to extract insights from the data.  
The project contains schema definitions, datasets, and analytical queries aimed at exploring sales, product performance, and operational metrics for a pizzeria.

---

## 🚀 Project Goals

- Design a relational schema to represent Orders, Order Details, Pizzas, Pizza Types (or Categories), and Customers/Store operations.  
- Populate the database (via provided `.sql` script or CSV import) with sample data representing a pizza shop’s sales.  
- Write and execute SQL queries to answer business-oriented questions: e.g., top-selling pizzas, revenue by size or type, order volume by time of day, etc.  
- Build a repository of SQL queries and results that showcase proficiency in joins, aggregates, window functions, subqueries and other SQL techniques.  
- Provide documentation for future use (e.g., for data-analyst portfolios, academic demonstrations, interview preparation).

---

## 🧩 Tech Stack

| Component               | Technology / Tool                                |
|-------------------------|--------------------------------------------------|
| Database management     | MySQL / PostgreSQL / SQLite (whichever you choose) |
| Schema & data loading   | `.sql` scripts, CSV imports                       |
| Query design & analysis | Standard SQL (JOIN, GROUP BY, ORDER BY, RANK(), etc) |
| Documentation           | Markdown (`README.md`), project folder structure   |

---

## 🔍 How It Works

1. **Setup the database**: Use `schema.sql` to create the tables and define relationships (for example: `pizza_types → pizzas → order_details → orders`).  
2. **Load data**: Import sample data into the tables via CSV or `.sql` inserts.  
3. **Run analytical queries**: Use the SQL files under `queries/` to execute business-oriented questions such as:  
   - Which pizza types or names sold the most?  
   - What is the total revenue and average order value?  
   - What time of day has the highest order count?  
   - How do pizza size and category impact revenue?  
   - Use window functions or ranking to find top N pizzas per category.  
4. **Interpret results**: The outputs are stored (optionally) under `results/`. Use the insights for business decisions (menu optimization, staffing, promotions).

---

## ✏️ Sample Business Questions (That your SQL addresses)

- Total number of orders placed across the period.  
- Total revenue generated from all pizza sales.  
- Identify the highest priced pizza and its category.  
- Determine the most frequently ordered pizza size (Small / Medium / Large).  
- List the top 5 pizzas by quantity sold and top 3 by revenue.  
- Aggregate orders by hour (e.g., lunch vs dinner peak times).  
- Compute percentage contribution of each pizza category to total revenue.  
- Use window functions to get “Top 3 best-selling pizzas by revenue for each category” scenario.  
- Explore cumulative sales over time to identify growth trends.

---

## 🛠️ Getting Started

### Prerequisites  
- Install a relational database system (MySQL, PostgreSQL, or SQLite).  
- Use a SQL client (MySQL Workbench, pgAdmin, DBeaver, etc).  
- Basic knowledge of SQL (SELECT, JOINs, GROUP BY, window functions).

### Setup Instructions  
```bash
# Clone the repository
git clone https://github.com/shakti20062003/pizzeria-sql-project.git
cd pizzeria-sql-project

# Import schema into your database
# (For MySQL)
mysql -u username -p database_name < schema.sql

# Import data (CSV or SQL) – follow instructions in the data folder
Running Queries
Open your SQL client, connect to the database, and execute the query files in the queries/ folder. Review results either via the UI or export them to files.
```
### 📏 Insights & Use-Cases
This project is useful for:

- Demonstrating SQL proficiency in a portfolio context (data-analyst, BI, etc).
- Practicing business-oriented analytics using a realistic dataset and scenario.
- Generating insights that a pizza business could leverage (menu changes, staffing hours, promotions, inventory management).
- Preparing for interviews featuring SQL and data analysis by working through sample queries and explanations.

👤 Author
Shakti Prasad Barik
📧 Email: shaktiprasadbarik0490@gmail.com
🌐 GitHub: https://github.com/shakti20062003

