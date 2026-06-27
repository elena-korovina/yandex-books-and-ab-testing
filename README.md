# Yandex Books Analytics & A/B Test Project

## 📊 Project Overview

This project analyzes user behavior in the Yandex Books service and evaluates the impact of product and behavioral factors on user engagement. It also includes an A/B test analysis for an e-commerce interface redesign.

The project combines SQL-based data extraction and Python statistical analysis.

---

## 🎯 Objectives

- Analyze user engagement metrics (MAU, retention, LTV)
- Identify the most popular authors and content
- Study seasonal patterns of user activity
- Evaluate revenue efficiency per hour of content consumption
- Test hypotheses about user behavior across regions
- Analyze results of an A/B test for interface changes

---

## 🗂 Project Structure

- `sql/` — SQL scripts used for data extraction and aggregation
- `notebooks/` — Python analysis and statistical testing
- `images/` — visualizations used in analysis

---

## 📌 Key Metrics

### User Activity
- MAU calculated for authors and content
- Retention rate of users after acquisition campaign

### Monetization
- LTV comparison between Moscow and Saint Petersburg users
- Revenue per hour of engagement

### Behavior Analysis
- Seasonal activity patterns (publishing vs removal of content)
- User engagement differences by region

---

## 🧪 Hypothesis Testing

### Hypothesis:
Users from Saint Petersburg spend more time in the application than users from Moscow.

- Method: independent samples t-test (one-sided)
- Significance level: 0.05
- Result: (fill in from notebook)

---

## 📈 A/B Test Analysis

An A/B test was conducted to evaluate whether simplifying the interface increases conversion within 7 days after registration.

The analysis includes:
- Data validation
- Group balance check
- Conversion comparison
- Statistical significance testing

---

## 📊 Tools Used

- SQL (PostgreSQL)
- Python (Pandas, SciPy, NumPy)
- Jupyter Notebook
- DataLens

---

## 📌 Conclusion

The analysis provides insights into user engagement, monetization efficiency, and behavioral differences between regions, as well as evaluates the impact of product changes through A/B testing.

---

## 👩‍💻 Author

Elena K.
