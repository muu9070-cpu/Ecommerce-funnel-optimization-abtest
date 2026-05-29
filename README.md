# E-Commerce Funnel Optimization & A/B Testing

This project focuses on identifying conversion bottlenecks in an e-commerce platform and evaluating intervention strategies through statistical experimentation. It follows a full data analytics workflow, including SQL-based analysis, Python-driven retention & funnel analysis, user segmentation, A/B testing, statistical significance testing, and Power BI dashboard visualization.

---

## 📌 1. Business Problem

Despite substantial traffic, overall purchase conversion remained low.

Key observations:

- **View events**: 96.81% of total activity  
- **Cart conversion rate**: 1.55%  
- **Purchase conversion rate**: 1.75%  
- **Repeat user ratio**: below 3%

These indicate significant friction in the purchase funnel and opportunities for optimization.

---

## 🛠️ 2. SQL & Python Analysis

SQL and Python were used to build analytical datasets covering:

### Funnel Analysis
- User journey: View → Cart → Purchase  
- Conversion rates calculated for each stage.

### User Segmentation
- Low / Medium / High Value users based on cumulative purchase amount.

### Retention Analysis
- Day-1 retention trend for each cohort  
- Calculated in Python with proper datetime handling.

### Product Performance
- Category GMV  
- Brand GMV  
- Average selling price  

---

## 📊 3. Key Findings

### Funnel Drop-Off
- Most users remain in browsing stage  
- Sharp drop between **View → Cart** and **Cart → Purchase**

### User Structure
- Medium and low-value users dominate the base  
- High-value users contribute majority of revenue

### Product Concentration
- Electronics dominate platform GMV  
- Smartphones account for >60% of category revenue

### Retention Challenge
- Continuous decline in retention  
- Repeat users only 2.09%

---

## 💡 4. Strategy Proposal

Based on funnel insights:

**Hypothesis:** Sending targeted coupon reminders will increase purchase conversion.

Expected impact:

- Increased purchase rate  
- Reduced funnel drop-off  
- Higher platform GMV

---

## 🧪 5. A/B Testing Simulation

Users randomly assigned:

| Group     | Description                     |
|-----------|---------------------------------|
| Control   | No coupon reminder              |
| Treatment | Coupon reminder intervention    |

Python simulation used to evaluate intervention outcomes.

**Results:**

| Metric               | Control | Treatment | Absolute Uplift | Relative Uplift |
|---------------------|---------|-----------|----------------|----------------|
| Purchase Conversion  | 1.70%   | 2.44%     | +0.74%         | +43.5%         |

---

## 📏 6. Statistical Validation

### Independent T-Test
- P-value < 0.001 → statistically significant

### 95% Confidence Interval

| Group     | 95% CI           |
|-----------|-----------------|
| Control   | 1.64% – 1.76%   |
| Treatment | 2.37% – 2.51%   |

---

## 💰 7. Estimated Business Impact

Assuming platform-wide deployment:

- **Additional Buyers**: 3,041  
- **Estimated GMV Uplift**: $973K  

---

## 📊 8. Power BI Dashboard

### Pages
1. **Executive Overview** – KPIs, daily GMV trend, total & repeat users  
2. **Product Analysis** – Top categories/brands, revenue concentration  
3. **Customer Behavior Analysis** – Top buyers, purchase frequency, user segmentation  
4. **Retention & Funnel** – Cohort retention, funnel conversion rates  
5. **Experiment Analysis** – A/B testing, uplift, CI, estimated GMV impact

---

## 🎨 9. Dashboard Showcase

### 1. Executive Overview
![Executive Overview](assets/page1_executive_overview.png)  
*Figure 1: Executive dashboard summarizing total GMV, active users, order volume, repeat purchase rate, and trends.*

### 2. Product Performance Analysis
![Product Analysis](assets/page2_product_analysis.png)  
*Figure 2: Product performance dashboard with category contribution, brand GMV, and average selling price.*

### 3. Customer Behavior Analysis
![Customer Analysis](assets/page3_user_analysis.png)  
*Figure 3: User analysis showing top buyers, purchase distribution, and user segmentation.*

### 4. Retention & Funnel Analysis
![Retention & Funnel](assets/page4_retention_funnel.png)  
*Figure 4: Retention trend and funnel conversion visualization, highlighting drop-off stages.*

### 5. Experiment Analysis
![Experiment Analysis](assets/page5_experiment_analysis.png)  
*Figure 5: A/B testing results, conversion uplift, confidence intervals, and estimated GMV impact.*

---

## 📁 10. Repository Structure

```text
Ecommerce-funnel-optimization-abtest
│
├── ecommerce_analysis.sql
├── ecommerce_analysis.ipynb
├── ab_test_real_users.ipynb
├── README.md
│
├── result_data
│   ├── experiment_summary.csv
│   ├── experiment_funnel.csv
│   └── experiment_ci.csv
│
└── assets
    ├── page1_executive_overview.png
    ├── page2_product_analysis.png
    ├── page3_user_analysis.png
    ├── page4_retention_funnel.png
    └── page5_experiment_analysis.png
