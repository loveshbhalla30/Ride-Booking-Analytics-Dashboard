# 🚖 Ride Booking Analytics Dashboard (SQL, Python, Power BI & DAX)

This project performs end-to-end data analysis on ride booking data to uncover key insights related to demand patterns, cancellations, revenue, and customer behavior.
**Dataset source:** Kaggle (inspired by real-world ride booking scenarios (Uber Data India))
---

## 📊 Project Overview

The goal of this project is to analyze ride booking data using:

- SQL → Data Cleaning & Querying  
- Python → Exploratory Data Analysis (EDA)  
- Power BI → Interactive Dashboard  

---

## 📁 Dataset

The dataset contains **150,000 ride records** with features such as:

- Booking Status  
- Vehicle Type  
- Pickup & Drop Locations  
- Ride Distance  
- Booking Value  
- Driver & Customer Ratings  
- Payment Method  

---

## 🧹 Data Cleaning (SQL)

Data cleaning was performed using PostgreSQL:

- Renamed columns for clarity  
- Converted text "null" values into actual NULL  
- Handled missing values  
- Removed unnecessary quotes  
- Converted columns to appropriate data types  

---

## 📥 Data Import

- Created table structure  
- Imported CSV dataset into PostgreSQL  

---

## 📊 Data Analysis (SQL)

Performed key business queries:

- Total bookings & revenue  
- Completion & cancellation rates  
- Vehicle type distribution  
- Peak booking hours  
- Top pickup locations  
- Payment method usage  

---

## 🐍 Python EDA

Performed exploratory data analysis using:

- Pandas  
- Matplotlib  
- Seaborn  

### Key Analysis:

- Booking status distribution  
- Cancellation rates  
- Vehicle type analysis  
- Peak hour trends  
- Location-based demand  
- Ride distance & revenue analysis  

---

## 📊 Dashboard (Power BI)

An interactive dashboard was built to visualize:

- Total bookings, revenue, completion rate  
- Booking trends over time  
- Vehicle type distribution  
- Top pickup locations  
- Ride status distribution  

---

## 🔍 Key Insights

- ~62% rides are completed successfully  
- Driver cancellations (~18%) are higher than customer cancellations (~7%)  
- Economy vehicle types dominate bookings and revenue  
- Peak demand occurs during daytime and evening hours  
- Ride distances are consistent across vehicle types  
- Driver ratings are generally high (~4.2)  

---

## 📈 Business Recommendations

- Reduce driver cancellations through better incentives  
- Increase driver availability during peak hours  
- Focus on high-demand locations for better allocation  
- Optimize operations for better completion rate  

---

## 🛠️ Tools & Technologies

- SQL (PostgreSQL)  
- Python (Pandas, Matplotlib, Seaborn)  
- Power BI  

---

## 🚀 Project Highlights

- End-to-end data analysis project  
- Real-world dataset (150K+ records)  
- Business-driven insights  
- Interactive dashboard  

---

## 📌 Conclusion

This project demonstrates how data analysis can help improve operational efficiency in ride booking platforms by identifying patterns in demand, cancellations, and revenue.

---
## 📁 Project Structure

Ride-Booking-Analytics/

├── data/  
│   ├── raw_data.csv 

├── sql/  
│   ├── data_import.sql  
│   ├── data_cleaning.sql  
│   └── data_analysis.sql  

├── python/  
│   └── ride_booking_analytics.ipynb  

├── dashboard/  
│   ├── ride_booking_dashboard.pbix   
│   └── dashboard_preview.png  

└── README.md

## 📊 Dashboard Preview

![Dashboard Preview]()

The dashboard provides insights into:

- Total bookings, revenue, and completion rate  
- Booking trends across time  
- Vehicle type distribution  
- Top pickup locations  
- Ride status distribution  
- Interactive filters for better analysis  