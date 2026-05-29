# E-Commerce Funnel Optimization & A/B Testing

## Executive Summary

Analyzed over **3 million e-commerce user interaction records** to identify conversion bottlenecks, evaluate customer behavior, and assess the effectiveness of a coupon reminder strategy through A/B testing.

Key findings include:

- Purchase conversion improved from **1.70% to 2.44%**
- Relative uplift reached **43.5%**
- Statistical testing confirmed significance (**p < 0.001**)
- Estimated platform-wide GMV uplift exceeded **$973K**
- Funnel analysis revealed major drop-offs before purchase completion

The project combines **SQL, Python, statistical experimentation, and Power BI** to provide end-to-end business insights and actionable recommendations.

---

# 📌 Project Overview

This project focuses on understanding user purchasing behavior and optimizing the e-commerce conversion funnel.

Using large-scale clickstream data, the analysis investigates:

- User purchase journeys
- Funnel conversion performance
- Customer segmentation
- Retention patterns
- Experimental intervention strategies
- Revenue impact estimation

The objective is to transform raw behavioral data into actionable business decisions that improve conversion and revenue.

---

# 🎯 Business Problem

Although the platform receives substantial traffic, only a small percentage of users complete purchases.

Several business questions were investigated:

### Business Questions

1. Where do users drop out of the purchase funnel?
2. Which customer groups contribute the most revenue?
3. How well are users retained after their first interaction?
4. Can coupon reminder interventions improve conversion?
5. What business impact could be generated if the strategy is deployed platform-wide?

---

# 📊 Dataset Overview

### Data Source

Kaggle E-Commerce Behavior Dataset

### Sample Used

- 3,000,000 interaction records
- October user activity data

### Available Fields

| Field | Description |
|---------|---------|
| event_time | Timestamp of event |
| event_type | View / Cart / Purchase |
| product_id | Product identifier |
| category_code | Product category |
| brand | Product brand |
| price | Product price |
| user_id | User identifier |
| user_session | Session identifier |

---

# 🛠 Data Preparation

Before analysis, the dataset was cleaned and transformed.

### Data Cleaning

- Converted timestamps into datetime format
- Checked missing values
- Verified event distributions
- Standardized event types

### Feature Engineering

Created:

- Event date
- Purchase frequency
- User total spend
- User segments
- Retention cohorts
- Experimental groups

### Technologies Used

- SQL
- Python (Pandas, NumPy, SciPy, StatsModels, Matplotlib)
- Power BI

---

# 📈 Funnel Analysis

Customer behavior was modeled as:

```text
View → Cart → Purchase
```

### Event Distribution

| Stage | Events |
|---------|---------|
| View | 2,904,210 |
| Cart | 44,988 |
| Purchase | 50,802 |

### Key Findings

- Most users remain in the browsing stage.
- Significant drop-off occurs before purchase completion.
- Conversion opportunities exist throughout the funnel.

### Business Insight

Reducing friction between product exploration and checkout completion could generate substantial revenue growth.

---

# 👥 Customer Segmentation

Users were segmented based on purchasing behavior and spending contribution.

### Segments

| Segment | Description |
|----------|----------|
| High Value | Frequent buyers with high spending |
| Medium Value | Moderate purchase frequency |
| Low Value | Low engagement and spending |

### Findings

- High-value customers account for a disproportionate share of platform revenue.
- Most users belong to low and medium-value groups.
- Retention efforts should prioritize high-value users.

---

# 🔄 Retention Analysis

A cohort-based retention framework was implemented using user first-activity dates.

### Objective

Measure user return behavior after their first interaction.

### Methodology

Day-1 Retention Rate:

```text
Returning Users on Day 1
-------------------------
Users Acquired on Day 0
```

### Findings

- Retention decreases steadily over time.
- Repeat user ratio remains below 3%.
- Most users do not return after their initial visit.

### Business Insight

Customer acquisition alone is insufficient. Long-term growth requires stronger retention strategies.

---

# 💡 Optimization Hypothesis

Based on funnel findings, many users showed purchase intent but failed to complete transactions.

### Proposed Intervention

Coupon Reminder Strategy

Users demonstrating purchasing intent receive reminder-based incentives.

### Expected Outcomes

- Higher conversion rate
- Reduced purchase abandonment
- Increased platform GMV

---

# 🧪 A/B Testing Framework

To evaluate the proposed strategy, an experimental framework was developed.

### Experiment Design

| Group | Description |
|---------|---------|
| Control | No coupon intervention |
| Treatment | Coupon reminder intervention |

### Success Metric

Purchase Conversion Rate

---

# 📊 Experiment Results

## Conversion Performance

| Metric | Control | Treatment |
|---------|---------|---------|
| Purchase Conversion | 1.70% | 2.44% |

### Absolute Uplift

```text
2.44% - 1.70%
= 0.74%
```

### Relative Uplift

```text
(2.44% - 1.70%) / 1.70%
= 43.5%
```

### Key Insight

The coupon reminder strategy significantly improved purchase conversion.

---

# 📏 Statistical Validation

To determine whether the observed uplift was statistically significant, hypothesis testing was performed.

### Independent T-Test

#### Null Hypothesis

The intervention does not affect conversion rate.

#### Alternative Hypothesis

The intervention improves conversion rate.

### Result

```text
p-value < 0.001
```

### Interpretation

The probability that the observed uplift occurred by random chance is extremely low.

The intervention effect is statistically significant.

---

# 📐 Confidence Interval Analysis

95% confidence intervals were calculated using the Wilson method.

| Group | Conversion Rate | 95% Confidence Interval |
|---------|---------|---------|
| Control | 1.70% | 1.64% – 1.76% |
| Treatment | 2.44% | 2.37% – 2.51% |

### Interpretation

The confidence intervals do not overlap, providing further evidence that the intervention meaningfully improves conversion.

---

# 💰 Business Impact Estimation

To estimate the financial value of the intervention, platform-wide deployment was simulated.

### Estimated Additional Buyers

```text
3,041
```

### Estimated Incremental GMV

```text
$973,248
```

### Business Interpretation

A relatively small increase in conversion rate can produce substantial revenue gains when applied across the full customer base.

---

# 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to communicate findings.

### Dashboard Pages

#### 1. Executive Overview

- GMV
- Orders
- Active Users
- Repeat Users
- Daily Trends

#### 2. Product Analysis

- Category GMV
- Brand Performance
- Revenue Distribution
- Average Selling Price

#### 3. Customer Behavior Analysis

- Top Buyers
- Purchase Distribution
- User Segmentation

#### 4. Retention & Funnel Analysis

- Retention Trend
- Funnel Conversion
- User Journey Analysis

#### 5. Experiment Analysis

- Control vs Treatment
- Conversion Uplift
- Confidence Intervals
- P-value
- Estimated GMV Impact

---

# 🎨 Dashboard Showcase

## Executive Overview

![Executive Overview](assets/page1_executive_overview.png)

*Figure 1: Executive dashboard summarizing platform GMV, active users, order volume, repeat purchase rate, and overall business performance.*

---

## Product Analysis

![Product Analysis](assets/page2_product_analysis.png)

*Figure 2: Product performance dashboard highlighting category contribution, brand GMV distribution, and average selling price.*

---

## Customer Behavior Analysis

![Customer Analysis](assets/page3_user_analysis.png)

*Figure 3: Customer behavior dashboard showing top buyers, purchase distribution, and customer segmentation.*

---

## Retention & Funnel Analysis

![Retention & Funnel](assets/page4_retention_funnel.png)

*Figure 4: Retention trend and funnel conversion dashboard illustrating customer journey drop-offs and engagement patterns.*

---

## Experiment Analysis

![Experiment Analysis](assets/page5_experiment_analysis.png)

*Figure 5: A/B testing dashboard presenting conversion uplift, confidence intervals, statistical significance, and estimated GMV impact.*

---

# 🚀 Business Recommendations

### Recommendation 1

Deploy coupon reminders to users exhibiting strong purchase intent.

### Recommendation 2

Focus optimization efforts on reducing View-to-Purchase friction.

### Recommendation 3

Implement retention campaigns targeting repeat purchases.

### Recommendation 4

Develop loyalty programs for high-value customers.

### Recommendation 5

Continue experimentation to validate future conversion initiatives.

---

# 📁 Repository Structure

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
```

---

# 📚 Skills Demonstrated

- SQL Analytics
- Data Cleaning & Transformation
- Funnel Analysis
- Cohort Retention Analysis
- Customer Segmentation
- A/B Testing
- Hypothesis Testing
- Confidence Interval Estimation
- Business Impact Analysis
- Data Visualization
- Power BI Dashboard Development
