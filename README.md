# Improving Perishable Supply Chain Efficiency Through Predictive Quality Modeling

🔗 **Full Business Case:** can be found here: https://github.com/menawm/perishable-supply-chain-ml/blob/main/business_case.md 

🔗 **Technical Analysis:** Technical details and methodology can be found in the https://github.com/menawm/perishable-supply-chain-ml/blob/main/Appendix.md

---
## Business Impact

- **97.9% model accuracy (KNN)**
- Reduced estimated losses from **~$400K/day → ~$78K/day**
- **~$120M+ annual savings potential**

---

## What This Project Does

Uses machine learning to predict product quality (Good vs Bad) in a perishable supply chain using measurable attributes like:
- Sweetness  
- Ripeness  
- Acidity  
- Weight  

The goal is to **improve sorting decisions early** and reduce costly misclassification.

---

## Approach

- Built and compared:
  - Logistic Regression  
  - K-Nearest Neighbors (KNN)  
  - Decision Tree  
- Evaluated using accuracy and confusion matrices  
- Translated model performance into **real-world cost impact**

---

## Results

| Model | Accuracy | Daily Cost |
|------|---------|-----------|
| Logistic Regression | 87.2% | ~$413K |
| Decision Tree | 88.6% | ~$392K |
| **KNN** | **97.9%** | **~$78K** |

👉 KNN dramatically reduces:
- Shipping low-quality product  
- Discarding good inventory  

---

## 🧭 Where to Look

- Start with **business_case.md** for the full story
- **Appendix.md** for the technical details
- Open **banana_prediction_github_code.html**   
- Review **banana_prediction_github_code.Rmd** for the full analysis code in RStudio

---

## Why It Matters

Small improvements in classification accuracy create **massive cost savings at scale** in high-volume supply chains.

This project shows how ML can:
- Reduce waste
- Reduce operational costs  
- Improve inventory decisions  
- Replace inconsistent manual inspection  

---
