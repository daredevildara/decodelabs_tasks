PROJECT 2 — EXPLORATORY DATA ANALYSIS

Sales & Customer Transaction Analysis
1. Project Overview

This project applies exploratory data analysis to a cleaned transactional sales dataset containing 1,200 recorded orders. The purpose of the analysis is to move beyond basic reporting and investigate the underlying patterns within transaction value, purchasing behaviour, product contribution, sales performance, acquisition sources, order outcomes, payment methods, coupon usage and relationships between purchasing variables.

The analysis was structured around ten business-oriented questions designed to establish a numerical baseline, identify distributional patterns and unusual transactions, evaluate changes in sales performance, understand the contribution of products and channels, and examine relationships within purchasing behaviour.

The analysis was conducted in Excel using descriptive statistics, pivot tables, aggregation, IQR-based outlier analysis, comparative analysis and correlation analysis.


2. Business Questions

The analysis addressed the following questions:

What does a typical transaction look like?

How are order values distributed, and are there unusual orders?

How does sales performance change over time?

Which products drive sales performance?

What does customer purchasing behaviour look like?

Which referral sources perform best?

What is the order status after being placed?

What payment method is used more across sales?

How do coupon-associated orders compare with orders without a coupon?

What meaningful relationships exist between purchasing variables?


3. Data & Methodology

The cleaned dataset contains 

1,200 recorded orders

1,189 unique CustomerIDs

7 product categories

5 referral sources

5 payment methods

5 order statuses

4 coupon categories

Transaction dates spanning January 2023 – June 2025

14 variables including Quantity, UnitPrice, ItemsInCart, and TotalPrice

The dataset contains 1,200 observations for each of the primary numerical purchasing fields examined in the descriptive analysis.

The exploratory process consisted of:

Descriptive statistics - Mean, median and count were used to establish the typical transaction profile.

Distribution and outlier analysis - The distribution of TotalPrice was examined using quartiles and the Interquartile Range (IQR) to identify unusually high-value transactions.

Time-series aggregation - Sales value and order volume were aggregated by month and year to identify changes and fluctuations over time.

Comparative categorical analysis - Pivot tables were used to compare products, referral sources, order statuses, payment methods and coupon codes by order volume and/or recorded sales value.

Customer-frequency analysis - CustomerID was examined to distinguish one-time customers from customers appearing more than once in the dataset.

Correlation analysis - Pearson correlation was used to assess relationships between Quantity, ItemsInCart and TotalPrice.


4. Exploratory Findings
   
Q1 — What does a typical transaction look like?

The dataset contains 1,200 transactions, with the following central characteristics:

The median quantity of 3 units is very close to the mean of 2.95, indicating that transaction quantity is relatively concentrated around three units.

For cart size, the median is 5 items, while the mean rises to approximately 5.49, suggesting that larger carts are exerting some upward influence on the average.

The relationship between mean and median is particularly informative for TotalPrice. The mean recorded order value is 1,053.97, while the median is considerably lower at 823.62.

EDA Finding

A typical transaction involves approximately three units and five items in the cart, with a median recorded order value of 823.62. The substantially higher mean order value of 1,053.97 indicates that higher-value transactions are pulling the average upward, making the median a more representative measure of the central transaction value.

Analytical interpretation

The distinction between the mean and median establishes an important baseline for the rest of the analysis: the dataset is not characterised by uniformly valued transactions. A relatively typical order sits below the overall average because a smaller number of higher-value transactions increase the mean.

Q2 — How are order values distributed, and are there unusual orders?

The TotalPrice distribution has the following characteristics:

Minimum: 11.39

Q1: 410.52

Median: 823.62

Q3: 1,578.48

Maximum: 3,456.40

IQR: 1,167.96

Therefore, the middle 50% of transactions fall between 410.52 and 1,578.48.

Using the IQR method:

Upper boundary = Q3 + 1.5 × IQR = 3,330.42

Eight transactions exceed this upper boundary.

These transactions range from 3,334.00 to 3,456.40. Importantly, all eight involve five units, with unit prices ranging from approximately 666.80 to 691.28.

EDA Finding

Order values display substantial variability and a clear right-skewed pattern. The median order value is 823.62, compared with a mean of 1,053.97, while the IQR-based upper boundary of 3,330.42 identifies eight unusually high-value transactions. These transactions range from 3,334.00 to 3,456.40 and consistently involve five units purchased at relatively high unit prices, suggesting that they are legitimate high-value transactions rather than obvious data-entry anomalies.

Analytical interpretation

The outlier analysis therefore does more than identify unusual observations. It provides evidence for why the distribution is skewed. The high-value observations are concentrated at the upper end because the combination of relatively high unit prices and the maximum observed quantity produces substantially larger order values. Consequently, the skew in TotalPrice appears to reflect the structure of the transactions rather than an obvious data-quality problem.

Q3 — How does sales performance change over time?

Recorded sales performance changes substantially across the observation period.

Between 2023 and 2024:

Sales declined by approximately 13.1% from 552,643.24 in 2023 to 480,235.87 in 2024. 

Orders declined by approximately 10.0% from 510 to 459 orders. 

Average order value declined by approximately 3.4% from 1,083.61 to 1,046.27.

This indicates that the 2024 reduction in sales was driven primarily by lower order volume, with a smaller contribution from reduced value per order. However, the monthly data does not show a simple continuous decline.

Examples include:

May 2023: 63,836.84

April 2023: 27,751.71

June 2024: 68,068.54

May 2024: 27,909.11

The dataset therefore contains considerable month-to-month volatility.

For 2025, only January through June are available. A direct comparison with full-year 2023 or 2024 would therefore be inappropriate.

A like-for-like H1 comparison shows:

H1 2024 sales: 257,059.34

H1 2025 sales: 231,882.85

Sales decline: approximately 9.8%

Orders: 237 → 231, a decline of only approximately 2.5%

Average order value: 1,084.64 → 1,003.82, a decline of approximately 7.5%

EDA Finding

Sales performance has declined overall, but the nature of the decline has changed over time. The 2023–2024 reduction was driven primarily by a 10.0% decline in order volume, while average order value fell only modestly. In the more recent H1 2024–H1 2025 comparison, order volume remained relatively stable, declining by only 2.5%, while average order value fell by approximately 7.5%. This indicates that the more recent reduction in recorded sales is increasingly associated with lower value generated per transaction rather than a substantial reduction in the number of orders.

Analytical interpretation

The monthly volatility also means that the business should not be characterised as experiencing a smooth downward trend. Performance fluctuates considerably, with strong and weak months occurring throughout the period. The H1 2025 comparison is particularly useful because it separates transaction volume from transaction value. The more recent decline cannot be explained by fewer orders alone.

Q4 — Which products drive sales performance?

Product performance is relatively distributed across the seven categories:

Chair	

Printer	

Laptop	

Tablet	

Monitor	

Desk

Phone	

Chair leads both unit volume and recorded sales value with 562 orders and 195,620.11 in sales. 

Chair, Printer and Laptop collectively contribute approximately 46.1% of total recorded sales value, despite accounting for approximately 46.4% of total unit volume.

However, product performance demonstrates why volume alone is insufficient to explain sales value.

Desk records 508 units, yet produces 167,459.93 in sales—the second-lowest sales contribution—because it has the lowest average unit price at 329.61.

Conversely, Phone has the highest average unit price at 375.22, but the lowest unit volume at 411, resulting in the lowest total sales value of 151,722.39.

EDA Finding

Product sales are relatively well distributed, with Chair, Printer and Laptop emerging as the strongest contributors to recorded sales value. However, the results demonstrate that sales performance is jointly influenced by purchasing volume and unit price. Phone has the highest average unit price but the lowest sales value because its purchasing volume is also the lowest, while Desk achieves substantially higher volume without translating that volume into equivalent sales value because of its lower unit price.

Analytical interpretation

This establishes a key commercial insight: Higher sales value is not simply a consequence of selling more units or charging a higher price. It is the interaction between both. The product analysis therefore provides context for the later correlation analysis, where cart size also proves insufficient to explain order value by itself.

Q5 — What does customer purchasing behaviour look like?

Customer frequency was examined using CustomerID.

The dataset contains:

1,200 recorded orders

1,189 unique customers

1,178 customers appearing once

11 customers appearing twice

Therefore, approximately 99.1% of customers appear once, while approximately 0.9% appear more than once within the dataset.

The 11 repeat customers account for:

22 orders

1.8% of all recorded orders

Approximately 19,535.78 in recorded sales

Approximately 1.5% of total recorded sales value

The average order value among these repeat-customer transactions is approximately 887.99, compared with approximately 1,057.07 among one-time-customer transactions.

EDA Finding

Customer activity is overwhelmingly concentrated among one-time recorded purchasers. Of the 1,189 unique customers, 1,178 appear once, while only 11 customers generate repeat transactions. These repeat customers account for just 22 of the 1,200 recorded orders and approximately 1.5% of recorded sales value. Their lower average order value of approximately 887.99, compared with 1,057.07 among one-time-customer transactions, suggests that the small repeat segment contributes more through additional purchasing frequency than through higher-value individual orders.

Analytical interpretation

The dataset provides evidence of low observed repeat-purchase activity, but not sufficient evidence to calculate long-term customer retention or lifetime value.

Q6 — Which referral sources perform best?

Referral activity is relatively evenly distributed across the five sources.

Instagram	

Email	

Google	

Facebook	

Referral	

Instagram generates the highest order volume at 259 orders, representing 21.58% of recorded orders, and the highest recorded sales value at 275,285.45, while Email follows closely with 250 orders and 261,808.55 in recorded sales. However, An important distinction appears between Google and Facebook, as Google generates 241 orders and 250,441.48 in sales, while Facebook generates only 228 orders, yet produces almost exactly the same sales value—250,410.90.
This is explained by Facebook's higher average order value of 1,098.29, the highest among all five sources.

EDA Finding

Referral performance is relatively balanced, with Instagram leading overall through the highest order volume and recorded sales value. However, Facebook demonstrates a different strength: despite generating fewer orders than Google, it produces almost identical sales value because its average order value is the highest at 1,098.29. This shows that channel performance differs depending on whether success is evaluated through acquisition volume or transaction value.

Analytical interpretation

There is therefore no single channel that dominates every performance measure. Instagram is strongest for scale. Facebook is strongest for value per transaction.

Q7 — What is the order status after being placed?

Order outcomes are relatively evenly distributed:

Cancelled	

Returned	

Pending	

Shipped	

Delivered	

No individual status dominates the dataset. However, the combination of Cancelled and Returned orders is significant: 497 orders and 41.42% of all recorded orders.  Cancelled orders are the largest individual category at 250 orders, while Delivered is the smallest at 231.

EDA Finding

Order outcomes are relatively evenly distributed, but a substantial 41.42% of recorded orders are classified as either cancelled or returned. Cancelled orders represent the largest individual category at 250 transactions, while delivered orders represent the smallest at 231. The distribution therefore indicates that a considerable proportion of recorded transaction activity does not currently appear in the delivered category.

Analytical interpretation

This is potentially important from an operational perspective, but the dataset does not justify treating all cancelled or returned order values as lost revenue.
TotalPrice represents the recorded transaction value associated with an order. It does not establish whether payment was captured, refunded, reversed or recognised as revenue.
Therefore, the appropriate conclusion is that order outcomes warrant operational attention, not that 519k in sales was necessarily lost.

Q8 — What payment method is used more across sales?

Payment method usage is also relatively balanced across:

Online	

Cash	

Credit Card	

Debit Card	

Gift Card	

Online is the most frequently used payment method, accounting for 258 orders (21.50%). However, Credit Card generates the highest recorded sales value, despite having fewer transactions:

Credit Card: 234 orders

Sales value: 263,847.63

AOV: 1,127.55

Online: 258 orders

Sales value: 262,442.94

AOV: 1,017.22

Credit Card therefore produces approximately 1,405 more in recorded sales value than Online despite having 24 fewer orders.
At the other end, Debit Card generates the lowest recorded sales value at 232,361.18, despite having 232 orders.

EDA Finding

Online is the most frequently used payment method, with 258 recorded orders, but Credit Card generates the highest recorded sales value at 263,847.63 from only 234 orders. The difference is explained by Credit Card having the highest average order value at approximately 1,127.55, compared with 1,017.22 for Online. Debit Card records a similar transaction volume at 232 orders but produces substantially lower sales value of 232,361.18. Payment-method performance therefore differs depending on whether usage is assessed by transaction frequency or the value of transactions generated.

Analytical interpretation

The important distinction is: Most used ≠ highest sales contribution.
Online is the dominant payment method by transaction count, whereas Credit Card is strongest by recorded sales value because its transactions are, on average, higher in value.

Q9 — How do coupon-associated orders compare with orders without a coupon?

Coupon usage is highly represented in the dataset.

Of the 1,200 recorded orders: 891 use a coupon, while 309 use no coupon. 

Therefore, coupon-associated orders account for 74.25% of recorded transactions. They also account for approximately 942,320.55, or 74.50% of total recorded sales value.

FREESHIP is the most frequently used coupon, with 313 orders generating 335,036.99 in recorded sales. It also produces a higher average order value than transactions without a coupon:

FREESHIP AOV: 1,070.41

No Coupon AOV: 1,043.37

EDA Finding

Coupon-associated transactions account for nearly three-quarters of recorded activity, representing 891 orders (74.25%) and approximately 74.50% of recorded sales value. FREESHIP is the most prevalent coupon, generating 313 orders and 335,036.99 in recorded sales, while also producing a higher average order value than transactions without a coupon. The close alignment between coupon transaction share and sales-value share indicates that coupon-coded orders constitute a major component of the recorded sales activity.

Analytical interpretation

There is a clear association between coupon usage and recorded sales activity in this dataset. However, the analysis cannot establish that coupons caused the higher sales volume or value. Customers may have been more likely to use coupons because they were already purchasing, or other factors may influence both coupon usage and transaction value.

Q10 — What meaningful relationships exist between purchasing variables?

Correlation analysis produced two meaningful relationships:

Relationship	Correlation

Quantity vs. ItemsInCart - 0.65

ItemsInCart vs. TotalPrice - 0.39

Quantity ↔ ItemsInCart

The correlation of 0.65 represents a moderate positive relationship. As the quantity purchased increases, the number of items in the cart generally tends to increase as well.

The corresponding linear model gives an R² of approximately 42.3%, meaning Quantity explains around 42.3% of the observed variation in ItemsInCart under that model.

There is still substantial unexplained variation, so the two variables are related but not interchangeable.  

ItemsInCart ↔ TotalPrice

The relationship is considerably weaker: r = 0.39

The corresponding R² is approximately 15.4%.

Therefore, only around 15.4% of the variation in TotalPrice is explained by ItemsInCart under the linear model.

EDA Finding

Quantity and cart size demonstrate a moderate positive relationship (r = 0.65), indicating that larger quantities generally coincide with larger carts. However, the relationship between cart size and TotalPrice is substantially weaker (r = 0.39), with ItemsInCart explaining only approximately 15.4% of variation in recorded order value. This demonstrates that the number of items in a cart alone is not a strong determinant of transaction value. Product and unit-price differences materially influence the final value of an order.

Analytical interpretation

This reinforces the conclusion from the product analysis. A customer can purchase a relatively large number of items without necessarily generating the highest-value order, while a smaller basket containing higher-priced products can produce substantially greater sales value. Thus, Sales value is not adequately explained by volume alone; the composition and price of the basket also matter.
The correlations establish association, not causation.

5. Overall EDA Insights

1. Transaction value is highly variable

The median order value of 823.62 sits considerably below the mean of 1,053.97, while eight legitimate high-value transactions exceed the IQR-based upper boundary.

The business therefore operates across a wide range of transaction values rather than around a single consistent order size.

2. Sales performance has weakened, but the underlying driver has changed

The 2023–2024 decline was primarily associated with fewer orders.

The H1 2024–H1 2025 comparison instead shows relatively stable order volume alongside a 7.5% reduction in average order value.

3. Product value is determined by both volume and price

Chair, Printer and Laptop are the strongest sales contributors, but the Phone example demonstrates that high unit price does not guarantee high sales value.

Likewise, Desk demonstrates that relatively strong volume does not necessarily produce equivalent sales when unit price is lower.

4. Customer activity is predominantly one-time within the observed data

With 1,178 of 1,189 customers appearing once, repeat purchasing represents a very small proportion of observed activity.

The result is useful as a behavioural signal, but should not be interpreted as a definitive retention metric because the dataset's observation period limits what can be inferred about longer-term customer relationships.

5. Acquisition channels have different strengths

Instagram generates the most orders and highest overall recorded sales value, while Facebook generates the highest average order value.

This demonstrates why acquisition channels should not be assessed using a single metric.

6. Order outcomes warrant attention

Cancelled and returned orders represent 41.42% of recorded transactions, making order fulfilment and post-purchase outcomes an important operational consideration.

However, recorded order value should not automatically be interpreted as realised revenue.

7. Payment behaviour differs from payment value

Online is the most frequently used payment method, but Credit Card produces the highest sales value because its average transaction value is considerably higher.

Again, volume and value tell different stories.

8. Coupon usage is deeply embedded in recorded sales activity

Coupon-associated transactions account for 74.25% of orders and 74.50% of recorded sales value.

This establishes substantial association, but not causal effectiveness.

9. Basket size alone does not explain order value

The correlation of 0.39 between ItemsInCart and TotalPrice, together with an R² of approximately 15.4%, demonstrates that transaction value depends on more than simply the number of items purchased.


6. Business Recommendations

1. Investigate the decline in average order value

The H1 2025 comparison suggests that the recent sales decline is increasingly associated with lower value per transaction rather than substantially lower order volume.

Further analysis should examine product mix, unit prices and basket composition across periods to determine what is reducing order value.

2. Examine cancellation and return drivers

With cancelled and returned transactions accounting for 41.42% of recorded orders, the next level of analysis should investigate which products and customer/order characteristics are associated with unsuccessful outcomes.

This would allow the business to move from identifying the size of the issue to understanding its underlying drivers.

3. Evaluate acquisition channels using multiple performance measures

Instagram demonstrates strength in order volume and total sales value, whereas Facebook generates the highest AOV.

Marketing performance should therefore be evaluated using a combination of volume, sales value and average transaction value, rather than relying on one headline metric.

4. Strengthen customer-level tracking

The dataset shows very limited observed repeat purchasing, with only 11 of 1,189 customers appearing more than once.

A longer customer observation period would allow the business to properly measure repeat-purchase rate, purchase intervals, retention and ultimately customer lifetime value.

5. Examine product mix as a driver of transaction value

Because cart size explains only approximately 15.4% of TotalPrice variation, increasing the number of items in a basket alone may not be sufficient to increase order value.

Further analysis should focus on which products and price combinations appear in higher-value transactions.

6. Evaluate coupon effectiveness beyond transaction counts

Coupon-associated orders make up almost three-quarters of recorded transactions, but their high representation does not establish that coupons caused higher sales.

A more advanced analysis should compare comparable customer/order groups and, where available, examine discount cost, margins and incremental purchasing behaviour before determining whether individual coupon campaigns are commercially effective.


7. Conclusion

This exploratory analysis demonstrates that the dataset contains considerably more complexity than its headline sales figure suggests.

The 1,264,761.96 in recorded sales value is generated through a combination of varying order sizes, product prices, purchasing volumes, acquisition sources, payment methods and promotional activity. Sales performance has declined across the observation period, but the underlying pattern has shifted from a primarily volume-driven decline in 2024 toward a more pronounced reduction in average order value in the first half of 2025.

Product analysis similarly shows that neither volume nor price can independently explain sales contribution. Chair, Printer and Laptop collectively account for approximately 46.1% of recorded sales value, while examples such as Phone and Desk demonstrate the different ways that price and volume interact to shape performance.

At the customer level, the dataset is dominated by one-time observed purchases, with only 11 of 1,189 unique customers generating repeat transactions. Referral channels are comparatively balanced, although their strengths differ between scale and transaction value. Meanwhile, the substantial proportion of cancelled and returned orders identifies an important operational area for further investigation.

Finally, correlation analysis reinforces a central conclusion of the EDA: purchasing volume alone does not explain transaction value. With ItemsInCart explaining only approximately 15.4% of TotalPrice variation, the composition and price of the basket remain important factors in understanding sales value.

Overall, the analysis establishes that sales performance is shaped by multiple interacting dimensions rather than a single volume metric. The strongest opportunities for further investigation therefore lie in understanding what drives changes in order value, unsuccessful order outcomes, repeat purchasing and product-level transaction composition.
