# Walmart Sales Data Analysis: SQL + Python Project

## 📊 Project Overview

This project is a comprehensive data analysis pipeline built around Walmart's retail transaction data. It involves cleaning and transforming a single-table dataset with over 10,000+ records, solving real-world business problems using SQL, and documenting insights for strategic decision-making. The project is ideal for analysts seeking hands-on experience in data wrangling, SQL querying, and business analytics.

---

## 🛠️ Tools & Technologies

- **Python (Jupyter Notebook)**: Data cleaning and preprocessing
- **Libraries**: `pandas`, `sqlalchemy`, `pymysql`
- **Database**: MySQL
- **Data Source**: Kaggle (CSV format)

---

## 📁 Project Steps

### 1. Download Dataset from Kaggle
- **Source**: [Walmart Sales Dataset](https://www.kaggle.com/najir0123/walmart-10k-sales-datasets)

- **Format**: CSV
- **Initial Size**: 10,000+ records

### 2. Data Cleaning in Jupyter Notebook
- **Library Used**: `pandas`
- **Functions Applied**:
  - `.shape()`, `.info()`, `.describe()`
  - `.isna()`, `.dropna()`
  - `.drop_duplicates()`
- **Result**: Cleaned dataset with **9,969 records**
- **Exported File**: `walmart_clean_data.csv`

### 3. Load Data into MySQL
- **Libraries Used**: `sqlalchemy`, `pymysql`
- **Process**:
  - Established connection to MySQL
  - Created table schema
  - Inserted cleaned data into database

### 4. Solve Business Problems Using SQL
Seven key business questions were addressed using SQL queries:

| # | Business Problem | Purpose |
|---|------------------|---------|
| 1 | Evaluate Overall Sales Performance | Assess total transactions, units sold, and revenue |
| 2 | Track Sales Volume by Payment Method | Optimize transaction processes |
| 3 | Identify Top-Rated Categories by Branch | Enable targeted marketing and inventory decisions |
| 4 | Analyze Category Ratings by City | Tailor offerings to regional preferences |
| 5 | Rank Categories by Profitability | Focus on profitable product lines |
| 6 | Understand Sales Distribution Across Shifts | Improve staff scheduling and inventory management |
| 7 | Determine Preferred Payment Method by Branch | Streamline checkout processes |

> 📄 Full problem statements and purposes are documented in [`Walmart_Business_Problems.pdf`](./Walmart_Business_Problems.pdf)

---

## 📦 Project Structure

```plaintext
|-- data/                     # Raw and cleaned CSV files
|-- notebooks/                # Jupyter notebooks for data cleaning
|-- sql_queries/              # SQL scripts solving business problems
|-- Walmart_Business_Problems.pdf  # Business questions and purposes
|-- README.md                 # Project documentation
```

---

## 📈 Results & Insights

- **Sales Performance**: Quantified total revenue and transaction volume
- **Customer Preferences**: Identified dominant payment methods and top-rated categories
- **Profitability**: Ranked categories by total profit
- **Operational Efficiency**: Analyzed sales distribution across shifts for better staffing

---

## 🚀 Future Enhancements

- Integrate with visualization tools like Power BI or Tableau
- Automate data pipeline for real-time updates
- Extend analysis to multi-table datasets or external sources

---

## 📋 Requirements

- **Python 3.8+**
- **MySQL Server**
- **Python Libraries**:
  - `pandas`, `sqlalchemy`, `pymysql`

---

## 🧭 Getting Started

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   ```
2. Install required libraries:
   ```bash
   pip install pandas sqlalchemy pymysql
   ```
3. Run the Jupyter notebook for data cleaning
4. Load cleaned data into MySQL
5. Execute SQL queries to generate insights

---

## 📜 License

This project is licensed under the MIT License.

---

## 🙏 Acknowledgments

- **Data Source**: Kaggle’s Walmart Sales Dataset
- **Inspiration**: Real-world business analytics and retail optimization
