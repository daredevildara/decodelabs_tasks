# Project 2 — Exploratory Data Analysis

## Sales & Customer Transaction Analysis

An exploratory analysis of transactional sales data focused on identifying patterns, trends, distributions, purchasing behaviour, and relationships that can support more informed business interpretation.

---

## 1. Project Overview

This project applies Exploratory Data Analysis (EDA) to a cleaned transactional sales dataset containing 1,200 recorded orders.

The objective was to move beyond basic reporting and investigate the underlying patterns within:

- Transaction value
- Purchasing behaviour
- Product performance
- Sales performance over time
- Customer activity
- Referral-source performance
- Order outcomes
- Payment methods
- Coupon usage
- Relationships between purchasing variables

The analysis was structured around ten business-oriented questions designed to establish a numerical baseline, identify distributional patterns and unusual transactions, evaluate changes in sales performance, understand the contribution of products and acquisition sources, examine order outcomes and payment behaviour, and identify relationships within purchasing variables.

The analysis was conducted in Microsoft Excel using descriptive statistics, PivotTables, aggregation, IQR-based outlier analysis, comparative analysis, and correlation analysis.

---

## 2. Business Questions

The analysis addressed the following questions:

1. What does a typical transaction look like?
2. How are order values distributed, and are there unusual orders?
3. How does sales performance change over time?
4. Which products drive sales performance?
5. What does customer purchasing behaviour look like?
6. Which referral sources perform best?
7. What is the order status after being placed?
8. What payment method is used more across sales?
9. How do coupon-associated orders compare with orders without a coupon?
10. What meaningful relationships exist between purchasing variables?

---

## 3. Data & Methodology

The cleaned dataset contains 1,200 transactions across 14 variables:

- Order ID
- Date
- Customer ID
- Product
- Quantity
- Unit Price
- Shipping Address
- Payment Method
- Order Status
- Tracking Number
- Items in Cart
- Coupon Code
- Referral Source
- Total Price

### Analytical Approach

#### Descriptive Statistics

Mean, median, and count were used to establish the typical transaction profile across Quantity, Unit Price, Items in Cart, and Total Price.

#### Distribution & Outlier Analysis

The distribution of `TotalPrice` was examined using quartiles and the Interquartile Range (IQR) to identify unusually high-value transactions.

#### Time-Series Aggregation

Sales value and order volume were aggregated by year and month to identify changes, peaks, and fluctuations in sales performance over time.

#### Comparative Categorical Analysis

PivotTables were used to compare products, referral sources, order statuses, payment methods, and coupon codes by order volume and recorded sales value.

#### Customer-Frequency Analysis

`CustomerID` was examined to determine whether customers appeared once or multiple times within the dataset.

#### Correlation Analysis

Pearson correlation was used to assess relationships between `Quantity`, `ItemsInCart`, and `TotalPrice`.

---

# 4. Exploratory Findings

## Q1 — What does a typical transaction look like?

The dataset contains 1,200 observations across each of the primary numerical purchasing fields examined.

| Statistic | Quantity | Unit Price | Items in Cart |
|---|---:|---:|---:|
| Count | 1,200 | 1,200 | 1,200 |
| Mean | 2.95 | 356.41 | 5.49 |
| Median | 3.00 | 364.21 | 5.00 |

The typical transaction involves approximately **3 units**, with the mean quantity of 2.95 being very close to the median of 3. This indicates relatively little separation between the average and central transaction quantity.

For Unit Price, the median of **364.21** is slightly higher than the mean of **356.41**. This suggests that lower-priced observations exert some downward influence on the average, making the median a useful representation of the central unit price.

The typical cart contains approximately **5 items**, while the mean of 5.49 is higher than the median of 5. This indicates that some larger carts are increasing the average cart size.

For Total Price, the **median order value of 823.62** provides a more representative view of a typical transaction than the mean of **1,053.97**, because the mean is substantially higher. This difference indicates that higher-value transactions are pulling the average upward.

### Key insight

The typical transaction is relatively modest in quantity and cart size, but the substantial difference between median and mean order value indicates that transaction values are not evenly distributed. A smaller number of higher-value orders materially influence the overall average.

---

## Q2 — How are order values distributed, and are there unusual orders?

| Statistic | Total Price |
|---|---:|
| Minimum | 11.39 |
| Q1 | 410.52 |
| Median | 823.62 |
| Q3 | 1,578.48 |
| Maximum | 3,456.40 |
| IQR | 1,167.96 |

The middle 50% of transactions have Total Price values between **410.52 and 1,578.48**.

The IQR is **1,167.96**, producing an upper boundary of approximately **3,330.42** and a lower boundary of approximately **-1,341.42**.

The maximum transaction value of **3,456.40** exceeds the upper IQR boundary, indicating the presence of high-value outliers. The distribution is therefore right-skewed, which is also consistent with the mean order value of 1,053.97 being substantially higher than the median of 823.62.

The IQR analysis identifies **eight high-value transactions** above the upper boundary of 3,330.42. These transactions range from **3,334.00 to 3,456.40** and consistently involve five units purchased at relatively high unit prices.

Rather than immediately treating these observations as data-quality errors, their underlying values and purchasing characteristics were considered. Their consistent relationship with relatively high unit prices suggests that they may represent legitimate high-value transactions rather than obvious data-entry errors.

### Key insight

The outliers are important because they influence the overall distribution and help explain why the mean order value is considerably higher than the median. They should therefore be retained for analysis while being recognised as unusually high-value transactions.

---

## Q3 — How does sales performance change over time?

Annual recorded sales were:

| Year | Sales Value | Orders |
|---|---:|---:|
| 2023 | 552,643.24 | 510 |
| 2024 | 480,235.87 | 459 |
| 2025* | 231,882.85 | 231 |

\*2025 contains January–June only.

Recorded sales declined from **552,643.24 in 2023 to 480,235.87 in 2024**, representing an approximate **13.1% decrease**.

Order volume also declined from **510 to 459 orders**, a decrease of approximately **10.0%**. Average recorded sales per order decreased more modestly, from approximately **1,083.61 to 1,046.27**.

This indicates that the 2024 decline was driven primarily by a reduction in order volume, with a smaller contribution from lower average order value.

However, the decline was not consistent throughout each year. Monthly performance fluctuated considerably.

In 2023, notable highs included:

- **May:** 63,836.84
- **August:** 54,352.14
- **October:** 52,607.85

The weakest month was:

- **April:** 27,751.71

In 2024, the strongest month was:

- **June:** 68,068.54

while weaker months included:

- **May:** 27,909.11
- **August:** 31,991.07
- **November:** 32,413.76

This indicates that sales performance was characterised more by month-to-month volatility than by a smooth downward trend.

### 2025 like-for-like comparison

Because only January–June is represented for 2025, its total should not be compared directly with the full-year figures for 2023 and 2024.

A like-for-like comparison of January–June 2024 against January–June 2025 shows:

- Sales declined from **257,059.34 to 231,882.85**, approximately **9.8%**
- Orders declined from **237 to 231**, approximately **2.5%**
- Average sales per order declined by approximately **7.5%**

This suggests that the more recent decline in sales is not being driven primarily by fewer orders. A reduction in the value generated per order also contributes materially to the decline.

### Key insight

The analysis distinguishes between changes in **order volume** and changes in **value per order**. The 2024 decline was primarily volume-driven, whereas the January–June 2025 comparison indicates a much smaller decline in order count alongside a more pronounced reduction in average sales per order.

---

## Q4 — Which products drive sales performance?

| Product | Unit Volume | Sales Value | Avg. Unit Price |
|---|---:|---:|---:|
| Chair | 562 | 195,620.11 | 355.66 |
| Printer | 542 | 195,612.61 | 351.71 |
| Laptop | 535 | 192,126.56 | 357.71 |
| Tablet | 497 | 186,568.95 | 367.68 |
| Monitor | 480 | 175,651.41 | 358.66 |
| Desk | 508 | 167,459.93 | 329.61 |
| Phone | 411 | 151,722.39 | 375.22 |
| **Total** | **3,535** | **1,264,761.96** | **356.41** |

Product sales are relatively well distributed across the seven categories, although Chair, Printer, and Laptop are the leading contributors to recorded sales value.

Chair ranks first in both unit volume and sales value, with **562 units** generating **195,620.11** in sales.

Printer is virtually tied with Chair in sales value at **195,612.61**, while Laptop follows at **192,126.56**.

The analysis also demonstrates that sales value is influenced by both **volume and unit price**.

Desk records **508 units** but generates **167,459.93**, partly reflecting its lowest average unit price of **329.61**.

Conversely, Phone has the highest average unit price at **375.22**, but also the lowest unit volume at **411**, resulting in the lowest total sales value of **151,722.39**.

### Key insight

A higher unit price does not automatically produce higher total sales. Sales contribution reflects the interaction between **how many units are sold and the value attached to each unit**. Chair demonstrates the strength of volume, while Phone demonstrates how a higher unit price can be offset by lower volume.

---

## Q5 — What does customer purchasing behaviour look like?

Customer frequency was examined using `CustomerID` to determine whether the dataset contained repeat customer activity.

The analysis identified:

- **1,200 recorded orders**
- **1,189 unique customers**
- **11 customers appearing twice**

This means the dataset contains **1,178 customers represented by one recorded order and 11 customers represented by two recorded orders**.

Therefore, the dataset does contain a small amount of repeat-customer activity, but the overwhelming majority of customers appear only once.

### Key insight

Repeat purchasing exists in the dataset, but it is limited. The customer structure therefore provides evidence of some repeat activity while also showing that most recorded customers have only one transaction.

The analysis should not be used to make broader conclusions about customer retention, long-term purchasing behaviour, or customer lifetime value because the dataset contains only a limited number of repeat observations.

---

## Q6 — Which referral sources perform best?

| Referral Source | Orders | Sales Value | Avg. Order Value |
|---|---:|---:|---:|
| Instagram | 259 | 275,285.45 | 1,062.88 |
| Email | 250 | 261,808.55 | 1,047.23 |
| Google | 241 | 250,441.48 | 1,039.18 |
| Facebook | 228 | 250,410.90 | 1,098.29 |
| Referral | 222 | 226,815.58 | 1,021.69 |
| **Total** | **1,200** | **1,264,761.96** | **1,053.97** |

The 1,200 recorded orders are distributed relatively evenly across the five referral sources, but their contribution to sales differs slightly.

Instagram is the strongest-performing source overall, generating **259 orders (21.58%)** and **275,285.45 in recorded sales (21.77%)**.

Its average order value of **1,062.88** indicates that its leading sales position is primarily supported by having the highest order volume rather than the highest-value individual transactions.

Email ranks second, generating **250 orders (20.83%)** and **261,808.55 in sales (20.70%)**, with an average order value of **1,047.23**.

An important comparison appears between Google and Facebook. Google generates more orders:

- Google: **241 orders**
- Facebook: **228 orders**

Yet both produce almost identical recorded sales:

- Google: **250,441.48**
- Facebook: **250,410.90**

This is explained by Facebook having the highest average order value of **1,098.29**, allowing its lower order volume to be offset by greater value per order.

Referral records the lowest performance across all three measures:

- **222 orders (18.50%)**
- **226,815.58 in sales (17.93%)**
- **1,021.69 average order value**

### Key insight

Referral-source performance changes depending on the metric used. Instagram leads in overall sales and order volume, while Facebook generates the **highest value per order**. This distinction is important because the source generating the most transactions is not necessarily the source generating the highest-value transactions.

---

## Q7 — What is the order status after being placed?

| Order Status | Orders | Sales Value |
|---|---:|---:|
| Cancelled | 250 | 276,396.21 |
| Returned | 247 | 243,277.70 |
| Pending | 237 | 256,328.15 |
| Shipped | 235 | 246,159.58 |
| Delivered | 231 | 242,600.32 |
| **Total** | **1,200** | **1,264,761.96** |

The distribution across order statuses is relatively even, but cancelled and returned orders together account for **497 of 1,200 orders (41.42%)**.

Cancelled orders represent the largest individual status category, with **250 orders** and **276,396.21** in recorded sales value.

Delivered orders represent the smallest category, with **231 orders** and **242,600.32** in recorded sales value.

This means a substantial proportion of recorded order activity is associated with orders that are not currently classified as delivered.

However, the recorded sales values attached to each status should not automatically be interpreted as realised revenue or revenue loss. The dataset does not establish whether cancelled or returned orders resulted in actual financial loss.

### Key insight

The order-status distribution highlights a substantial share of transactions outside the delivered category, particularly cancelled and returned orders. This makes order fulfilment and post-purchase outcomes an important area for further investigation, while avoiding unsupported assumptions about financial impact.

---

## Q8 — What payment method is used more across sales?

| Payment Method | Orders | Sales Value |
|---|---:|---:|
| Online | 258 | 262,442.94 |
| Cash | 246 | 259,786.29 |
| Credit Card | 234 | 263,847.63 |
| Debit Card | 232 | 232,361.18 |
| Gift Card | 230 | 246,323.92 |
| **Total** | **1,200** | **1,264,761.96** |

Online is the most frequently used payment method, accounting for **258 orders (21.50%)**.

However, Credit Card generates the highest recorded sales value at **263,847.63**, despite having only **234 orders (19.50%)**.

The difference is explained by the higher average order value associated with Credit Card transactions:

- Credit Card: approximately **1,127.55**
- Online: approximately **1,017.22**

Debit Card records the lowest sales value at **232,361.18**, despite having **232 orders**.

### Key insight

Payment-method performance differs depending on whether it is assessed by **transaction volume or sales value**.

Online is the most frequently used method, but Credit Card generates the greatest recorded sales value because its transactions have a higher average order value.

---

## Q9 — How do coupon-associated orders compare with orders without a coupon?

| Coupon Code | Orders | Sales Value |
|---|---:|---:|
| FREESHIP | 313 | 335,036.99 |
| No Coupon | 309 | 322,401.41 |
| WINTER15 | 292 | 302,483.54 |
| SAVE10 | 286 | 304,840.02 |
| **Total** | **1,200** | **1,264,761.96** |

Coupon-associated transactions account for **891 of the 1,200 recorded orders (74.25%)** and approximately **942,320.55**, representing **74.50% of total recorded sales value**.

FREESHIP is the most frequently used coupon, with **313 orders** generating **335,036.99** in sales.

Orders without a coupon account for **309 orders** and **322,401.41** in sales.

FREESHIP orders also have a higher average order value of approximately **1,070.41**, compared with approximately **1,042.21** for orders without a coupon.

### Key insight

Coupon-coded transactions account for the majority of both recorded order volume and recorded sales value. FREESHIP is the most prevalent coupon and is associated with a slightly higher average order value than transactions without a coupon.

However, the analysis identifies **association rather than causation**. The dataset does not establish that coupon usage caused the higher sales volume or value.

---

## Q10 — What meaningful relationships exist between purchasing variables?

| Relationship | Correlation |
|---|---:|
| Quantity vs Items in Cart | 0.65 |
| Items in Cart vs Total Price | 0.39 |

### Quantity vs Items in Cart

Quantity and Items in Cart have a **moderate positive correlation of 0.65**.

This indicates that orders involving larger quantities generally tend to coincide with larger carts.

Under the corresponding linear model, Quantity explains approximately **42.3% of the variation in Items in Cart**, meaning that the relationship is meaningful but does not account for all observed variation.

### Items in Cart vs Total Price

Items in Cart and Total Price have a considerably weaker positive correlation of **0.39**.

This indicates that larger carts tend to be associated with higher order values, but cart size alone is not a strong determinant of Total Price.

Items in Cart explains approximately **15.4% of the variation in Total Price** through the linear relationship.

Orders with similar numbers of items can therefore have substantially different Total Price values. This suggests that differences in product and unit prices contribute materially to final order value.

### Key insight

The relationships demonstrate that purchasing volume and order value are connected, but not interchangeable.

A larger cart generally accompanies a greater quantity of items, yet the number of items in a cart alone provides limited explanation for the final order value. Product and price differences therefore remain important components of transaction value.

The correlations identify **association, not causation**.

---

# 5. Overall Analytical Insights

The analysis produced several interconnected findings across the ten questions.

### 1. Transaction values are right-skewed

The median order value of **823.62** is considerably below the mean of **1,053.97**, while eight transactions exceed the IQR-based upper boundary. Higher-value transactions therefore have a measurable influence on the overall distribution.

### 2. Sales performance has declined but remains volatile

Annual sales decreased by approximately **13.1% between 2023 and 2024**, with order volume accounting for most of the decline. Monthly results, however, fluctuate considerably rather than following a consistent downward pattern.

### 3. Product performance reflects both volume and price

Chair, Printer, and Laptop are the leading sales contributors, while Phone demonstrates that a higher average unit price does not necessarily result in higher total sales when transaction volume is lower.

### 4. Customer data shows limited repeat activity

The 1,200 transactions correspond to **1,189 unique customers**, with only **11 customers appearing twice**. This provides evidence of limited repeat purchasing within the observed dataset but does not support broader conclusions about customer retention.

### 5. Acquisition performance depends on the metric

Instagram generates the greatest order volume and overall sales, while Facebook produces the highest average order value. This demonstrates why acquisition sources should be evaluated using multiple performance measures rather than a single ranking.

### 6. Order outcomes warrant attention

Cancelled and returned orders represent **41.42% of recorded transactions**. While the dataset cannot establish the financial impact of these outcomes, their prevalence makes order-status performance a relevant area for further investigation.

### 7. Payment-method rankings change depending on the measure

Online is the most frequently used payment method, whereas Credit Card generates the highest recorded sales value. Transaction volume and transaction value therefore produce different rankings.

### 8. Coupon usage is widespread

Coupon-associated transactions represent **74.25% of recorded orders and 74.50% of recorded sales value**. FREESHIP is the most frequently used coupon and has a slightly higher average order value than transactions without a coupon, although the analysis does not establish causation.

### 9. Purchasing variables are related, but not sufficient on their own

Quantity and Items in Cart have a moderate positive relationship, while Items in Cart and Total Price have a weaker relationship. This demonstrates that transaction value depends on more than simply the number of items purchased.

---

# 6. Analytical Limitations

Several findings should be interpreted within the limitations of the dataset.

- The dataset contains 1,200 recorded transactions and represents a limited observation period.
- 2025 contains only January–June observations, so it should not be compared directly with full-year figures.
- Customer frequency is limited, with only 11 customers appearing twice.
- Order status values do not establish whether cancelled or returned orders resulted in realised financial losses.
- Coupon analysis demonstrates association but cannot establish causal impact.
- Correlation measures identify relationships between variables but do not establish causation.
- The outlier analysis identifies unusual transaction values but does not independently establish whether those transactions are commercially exceptional or anomalous.

These limitations were considered when interpreting the findings to avoid extending the analysis beyond what the available data can support.

---

# 7. Tools & Techniques

**Tools**

- Microsoft Excel
- PivotTables
- Excel formulas and functions
- Data aggregation
- Data visualisation

**Analytical techniques**

- Descriptive statistics
- Mean, median and count
- Quartile analysis
- Interquartile Range (IQR)
- Outlier identification
- Time-series analysis
- Comparative categorical analysis
- Customer-frequency analysis
- Pearson correlation
- Business-focused interpretation

---

# 8. Evidence of Analysis

The supporting Excel workbook contains the underlying calculations, PivotTables, analysis and visual evidence used to produce the findings documented above.

### Workbook

[View the EDA workbook →](./EDA.xlsx)

### Analytical Evidence

The `screenshots` folder contains visual evidence from the analysis:

- [01 — Transaction Profile](./screenshots/01_transaction_profile.png)
- [02 — Order Value Distribution](./screenshots/02_order_value_distribution.png)
- [03 — Sales Trend](./screenshots/03_sales_trend.png)
- [04 — Product Analysis](./screenshots/04_product_analysis.png)
- [05 — Customer Behaviour](./screenshots/05_customer_behaviour.png)
- [06 — Referral Sources](./screenshots/06_referral_sources.png)
- [07 — Order Status](./screenshots/07_order_status.png)
- [08 — Payment Methods](./screenshots/08_payment_methods.png)
- [09 — Coupon Analysis](./screenshots/09_coupon_analysis.png)
- [10 — Purchasing Variable Relationships](./screenshots/10_purchasing_relationships.png)

---

# 9. Conclusion

This analysis demonstrates how exploratory data analysis can move a transactional dataset from simple numerical records to interpretable business information.

The analysis identified distributional characteristics, high-value transactions, changes in sales performance, differences in product contribution, limited repeat purchasing, variation in acquisition-source performance, order-status patterns, payment-method differences, widespread coupon usage, and relationships between purchasing variables.

More importantly, the analysis distinguishes between what the data demonstrates and what it does not. Relationships are not treated as causal effects, recorded sales values are not automatically treated as realised revenue, and unusual transactions are investigated rather than automatically classified as errors.

The resulting analysis provides a structured evidence base for understanding the dataset and identifying areas that could be explored further through deeper customer, product, operational, or predictive analysis.
