# Ecommerce Data Analaysis
**Purpose Statement**: To analyse factors contributing to a decline in sales for a cosmetics online store by examining key performance indicators(KPIs) and customer behaviour.

**A little about Data**: 
1. Data is collected from a cosmetics online store for 5 months between Oct 2019 and Feb 2020.
2. Contains customer behavior data including event time, event type, product category, user IDs
3. Source: eCommerce Events History in Cosmetics Shop collected by Open CDP

**Analysis Steps**:
1. Created a data mart to streamline access to relevant data(session count, user count per events by day, week, month)
2. Examined ecommerce key performance indicators(KPIs) including CVR, AOV and website traffic
3. Analysed performance trend by top brands and products to check if they are negatively impacting the sales
4. Investigated repeat purchase and customer retention through cohort analysis

**Insights**:

**Ecommerce KPIs- Traffic, AOV, CVR:**

<img width="410" alt="image" src="https://github.com/user-attachments/assets/b4c3bf12-6233-4941-8b5a-bfa1ce343805" />

1. Traffic and AOV both showing a drop after a peak season
2. However, they recovered and are tracking above the average in 2020
3. CVR on its downward trajectory since Dec 2019

**CVR Funnel Analysis**

<img width="500" alt="image" src="https://github.com/user-attachments/assets/e53a48f9-5941-408e-8169-55a9b24b45cd" />

1. View to cart rate dropped below the average while cart to purchase rate is in line with the trend
2. A drop in view to cart funnel is a contributing factor behind the slow performance

**Top Selling Brand & SKU**

Brand

<img width="300" alt="image" src="https://github.com/user-attachments/assets/dadbdf03-3efa-435f-a8d0-c495373baae2" />
<img width="300" alt="image" src="https://github.com/user-attachments/assets/f373aac3-4204-4f5e-b36f-3b240fa5a1b8" />

SKU

<img width="300" alt="image" src="https://github.com/user-attachments/assets/539dfa5d-94e1-4eec-b280-4b14be7296c5" />
<img width="300" alt="image" src="https://github.com/user-attachments/assets/33abe8be-94a7-488c-a38b-d1e2b8b7d839" />

1. Performance from top brands looks in line
2. Weaker performance from top selling SKUs, which might be the reason behind the lower view to cart funnel

**Retention: Cohort Analysis**

<img width="550" alt="image" src="https://github.com/user-attachments/assets/a07f7106-abf0-40a8-89f4-aca538cae9ed" />

1. Retention rate is dropping since Oct 2019, however, average order value stays positive with customers increasing their spending over time
2. A decreased customer retention is leading to a drop in sales


**Conclusions**:
1. Revenue continues its downwards trajectory since peak season (Black Friday & Christmas) last year.
2. Lower CVR from view (product page) to cart is one of the main reasons behind the drop in revenue in recent months.
3. A decline in retention rate is another factor contributing to the drop in sales. However, new customers are increasing average order value on their subsequent purchases.

**Next Steps**:
1. Improve CVR through view to cart funnel optimisation:
<img width="700" alt="image" src="https://github.com/user-attachments/assets/018fa3d9-f568-454e-954d-eed2d9860331" />

2. Improve customer retention rate by:

(a) Implemeting a customer loyalty program

(b) Creating a a referral program

(c) Leveraging email marketing and remarketing(e.g Birthday or milestone promotions, newsletters featuring insightful content)

(d) Boosting social media engagement and community building

**Limitations**:
1. Due to limitations in data related to traffic sources and product pages, a detailed conversion rate analysis is currently not feasible.
2. Once the relevant data is secured, we can perform a conversion analysis by traffic source and product page, and propose subsequent actions (e.g. insufficient stock, pricing issues, product page images, descriptions, site performance, etc).

