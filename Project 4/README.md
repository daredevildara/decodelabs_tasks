# Project 4 — Data Visualization & Sales Performance Dashboard

## Project Overview

This project is the final project of my Data Analytics internship at DecodeLabs, and focuses on data visualization and storytelling.

Building on the data cleaning, exploratory analysis, and SQL analysis completed in the earlier projects, this stage focused on transforming analytical findings into a clear and interactive dashboard.

The objective was not simply to create charts, but to select visuals that communicate the most relevant patterns in the dataset and make the resulting insights easier to interpret.

---

## Project Objective

The objective of this project was to create a dashboard that communicates key sales performance insights through appropriate and visually effective data visualizations.

The dashboard was designed around the following business question:

> What factors are driving order value, and where are the strongest opportunities to improve business performance?

---

## Analytical Questions

The dashboard was built around four key questions:

1. How is order performance changing over time?
2. Which products contribute most to order value?
3. Which acquisition sources generate the greatest order activity and value?
4. How does basket size influence order value?

These questions guided the selection of the dashboard's visualizations rather than selecting charts based purely on appearance.

---

## Dataset

The project uses the same cleaned sales dataset used throughout the previous internship projects.

The dataset contains 1,200 orders across 1,189 unique customers, covering the period from January 2023 to June 2025.

Key fields used in the analysis include:

- OrderID
- Date
- CustomerID
- Product
- Quantity
- UnitPrice
- PaymentMethod
- OrderStatus
- ItemsInCart
- CouponCode
- ReferralSource
- TotalPrice

> Note: 2025 data covers January–June only.

---

## Tools Used

- Microsoft Excel
- PivotTables
- PivotCharts
- Excel formulas
- Slicers
- Data visualization and dashboard design

---

## Dashboard

The final dashboard contains four main visualizations supported by four KPI indicators.

### KPI Metrics

- Total Order Value: 1.26M
- Unique Customers: 1,189
- Average Order Value: 1,054
- Total Orders: 1,200

### Visualizations

#### 1. Order Value by Product

A horizontal bar chart was used to compare the contribution of each product to total order value.

The results show that Chair and Printer generate the highest total order values, while the differences between the products are relatively close. This indicates that order value is distributed across several products rather than being driven by one dominant product.

#### 2. Order Value by Acquisition Source

This visualization compares total order value across referral sources.

Instagram generates the highest total order value and the highest number of orders, while Facebook records the highest average order value despite generating fewer orders than Instagram and Email.

This highlights a distinction between acquisition volume and the value of individual orders.

#### 3. AOV Increases with Basket Size

The basket-size analysis groups customers according to the number of items in their cart and compares the resulting average order value.

Average order value increases consistently as basket size increases:

| Basket Size | Average Order Value |
|---|---:|
| 1–3 | 599 |
| 4–6 | 1,011 |
| 7–9 | 1,349 |
| 10–12 | 1,743 |

The pattern indicates a clear positive association between basket size and order value.

This suggests that strategies such as cross-selling, bundling, and upselling could provide opportunities to increase order value, although the analysis does not establish causation.

#### 4. Monthly Order Value Trend

A line chart was used to show changes in order value over time.

The visualization highlights fluctuations in monthly order value across 2023, 2024, and the first six months of 2025.

Because 2025 is only partially represented in the dataset, comparisons between 2025 and complete calendar years should be interpreted with caution.

---

## Key Insights

### Order value declined alongside a reduction in average order value

Full-year comparison shows that 2024 recorded lower order value and fewer orders than 2023. However, the decline in average order value also contributed to the reduction.

A comparable first-half comparison between 2024 and 2025 similarly shows a decline in average order value.

This suggests that changes in order value cannot be explained by order volume alone.

### Product performance is relatively distributed

No single product overwhelmingly dominates total order value.

Chair, Printer, and Laptop are the three highest contributors, together accounting for approximately 46% of total order value.

Laptop also records the highest average order value among the products.

### Acquisition performance differs between volume and value

Instagram generates the highest number of orders and total order value.

However, Facebook has the highest average order value despite producing fewer orders.

This demonstrates why acquisition performance should be evaluated using both volume and value rather than relying on order count alone.

### Larger baskets are associated with higher order values

Average order value rises from approximately 599 for baskets containing 1–3 items to approximately 1,743 for baskets containing 10–12 items.

The relationship suggests that increasing basket size may represent an opportunity for improving order value through complementary-product strategies.

---

## Dashboard Design Approach

The dashboard was designed around the principle of choosing the visualization based on the analytical question.

- Bar charts were used for category comparisons.
- Line charts were used to show changes over time.
- Column charts were used to compare average order value across basket-size groups.
- KPI cards were used to communicate high-level performance measures.
- Slicers were included to allow users to interact with the dashboard by year and product.

The design was intentionally kept concise to prioritize readability and reduce unnecessary visual elements.

---
## Outcome

This project completed the final stage of my Data Analytics internship project sequence.

Across the four projects, I progressed from preparing and validating raw data, to exploratory analysis, SQL-based analysis, and finally communicating analytical findings through visualization.

Project 4 reinforced the importance of moving beyond producing correct analyses to presenting those analyses in a way that allows the intended audience to quickly understand the underlying business message.

## Files

```text
Project 4 - Data Visualization/
│
├── screenshots/
│   └── sales_performance_dashboard.png
│
├── Project_4_Sales_Dashboard.xlsx
│
└── README.md
