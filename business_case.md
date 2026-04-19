
## Executive Summary

A model-driven approach to quality classification can significantly reduce operational cost in perishable supply chains. In this analysis, the K-Nearest Neighbors (KNN) model achieved approximately **98% accuracy**, reducing estimated losses from **$390K–$410K per day to ~$77K per day**, representing over **$120M in potential annual savings**.

Perishable supply chains rely on timely and accurate quality signals to guide sorting, inventory allocation, and distribution decisions. In practice, these signals are often delayed and dependent on manual inspection, leading to inefficiencies, higher labor costs, and avoidable waste.

This project evaluates whether machine learning can improve the speed and consistency of quality classification using bananas as a case study. Multiple models were developed and tested to assess how measurable product attributes can be used to predict quality in a high-volume environment.

Results show that improving classification accuracy directly enhances operational decision-making. Earlier identification of low-quality inventory enables more efficient sorting, better inventory prioritization, and reduced reliance on manual inspection.

These findings demonstrate that a model-driven approach can materially improve efficiency and reduce cost at scale. A pilot implementation in a high-volume distribution environment is recommended to validate performance and support broader deployment.


## Project Overview

This project evaluates the use of machine learning to improve quality classification in perishable goods supply chains, where inaccurate assessments can lead to significant waste, inefficient sorting, and suboptimal inventory decisions.

Using bananas as a case study, multiple classification models were developed and tested based on product attributes such as sweetness, acidity, ripeness, and weight. The goal was to identify an approach that can reliably distinguish between high- and low-quality items in a high-volume distribution environment.

The analysis evaluates how predictive modeling can improve classification accuracy and consistency at scale, and how these improvements can translate into more efficient sorting, better inventory allocation, and stronger downstream distribution decisions. Results demonstrate that model-based classification can meaningfully reduce misclassification and support more reliable operational decision-making.

Detailed methodology and model development are provided in the Appendix and supporting analysis files.


## Business Problem

Perishable supply chains rely on fast, accurate quality signals to guide sorting, inventory allocation, and distribution decisions. In practice, these signals are often delayed, inconsistent, and heavily dependent on manual inspection.

As a result, low-quality inventory is frequently identified too late, after it has already moved through storage and transportation, driving unnecessary handling and logistics costs. At the same time, limited visibility into product condition reduces the ability to prioritize inventory effectively, weakening sorting and allocation decisions.

This creates three core challenges: **operational inefficiency, elevated labor costs from manual inspection, and suboptimal inventory decisions.** Together, these issues lead to avoidable cost and reduced efficiency across perishable supply chains.

Addressing these challenges requires a more consistent and timely approach to identifying product quality, enabling earlier and more informed decision-making across operations.


## Analytical Approach

A predictive modeling approach was used to generate an earlier and more consistent signal of product quality to support operational decision-making. Bananas were used as a case study to evaluate whether measurable product attributes could reliably indicate overall quality.

The analysis followed three steps: data preparation, model development across multiple classification methods (LR, KNN, DT), and performance evaluation to identify the most effective approach.

The goal was to test whether a model-driven signal could improve the speed and consistency of quality assessment. Detailed methodology and technical outputs are provided in the Appendix.



## Model Evaluation

Multiple classification models were evaluated based on accuracy and their ability to minimize misclassification.

- **Logistic Regression:** ~87% accuracy; strong baseline, but higher misclassification limits its ability to support reliable operational decisions  
- **Decision Tree:** ~89% accuracy; improved performance with better pattern capture, though classification errors remain at a level that can impact decision quality  
- **KNN:** ~98% accuracy; substantially reduces misclassification, providing the most reliable signal for identifying low- and high-quality inventory  

### Model Selection
KNN was selected as the preferred model due to its superior accuracy and consistency in identifying both high- and low-quality items.

### Business Implication
By reducing misclassification, the model improves the reliability of quality signals used in sorting and inventory decisions, lowering the likelihood of low-value products moving through the supply chain unnecessarily.

Detailed model outputs and confusion matrices are provided in the Appendix.



## Key Findings

- **Quality can be predicted with high reliability using measurable attributes.**  
  Model performance shows that product characteristics such as sweetness, ripeness, and acidity provide a strong signal for distinguishing between high- and low-quality items.

- **Reducing misclassification materially improves decision quality.**  
  The difference in model performance demonstrates that even small improvements in accuracy can significantly reduce the likelihood of low-quality inventory being misidentified, which directly impacts sorting and handling decisions.

- **Earlier identification of low-quality inventory is critical.**  
  The ability to flag lower-quality items sooner enables more proactive decision-making, allowing operations to prioritize, reroute, or remove inventory before additional costs are incurred.

- **Model-driven signals outperform manual or reactive approaches.**  
  A consistent, data-driven classification approach reduces reliance on manual inspection and provides a more scalable and repeatable way to assess product quality across high-volume environments.



## Business Impact
At scale, improved classification accuracy reduces the cost of misclassification, a key driver of waste and inefficiency in perishable supply chains.

When low-quality inventory is identified too late, it continues through storage and transportation, accumulating cost without delivering value. Misclassifying good inventory also leads to unnecessary product loss. Improving accuracy reduces both types of errors.

To estimate impact, a simplified cost model was used with representative assumptions based on industry-scale operations:
- ~10 million units processed per day (illustrative high-volume distribution scenario)  
- ~10% low-quality rate (reflecting typical spoilage and variability in perishable goods)  
- $0.50 cost per missed low-quality unit (handling, logistics, and spoilage)  
- $0.30 cost per incorrectly discarded high-quality unit (lost revenue)  

Under these assumptions, estimated losses decrease from approximately **$390K–$410K per day to ~$77K per day**, representing over **$120M in potential annual savings**.

These estimates are directional and intended to illustrate the magnitude of impact. Detailed assumptions and calculations are provided in the Appendix.



## Operational Recommendation

Based on the analysis, implementing a model-driven approach to quality classification can materially improve decision-making and reduce operational cost in perishable supply chains.

### Recommended Approach

- **Deploy the model at the point of intake or sorting**  
  Use the model early in the process to identify low-quality inventory before it enters storage and distribution.

- **Prioritize inventory based on predicted quality**  
  Route higher-risk items for faster processing, discounting, or removal to minimize downstream cost.

- **Reduce reliance on manual inspection**  
  Use the model to support or replace repetitive quality checks, improving consistency and lowering labor requirements.

### Implementation Strategy

- **Pilot in a high-volume distribution center**  
  Test performance in a real operational environment to validate accuracy and cost impact.

- **Monitor key metrics**  
  Track misclassification rates, waste levels, and handling costs to measure effectiveness.

- **Refine and scale**  
  Adjust the model based on real-world data, then expand deployment across additional facilities.

### Key Considerations

- **Scalability and performance**  
  Ensure the selected model can operate efficiently in high-volume environments.

- **Integration with existing systems**  
  Align with current inventory and logistics workflows for seamless adoption.

- **Data quality and consistency**  
  Maintain reliable input data to ensure ongoing model performance.




  ## Limitations & Next Steps

### Limitations

- **Dataset representativeness**  
  The modeling dataset is balanced for training purposes and does not reflect real-world quality distributions, which are typically skewed toward higher proportions of good inventory.

- **Simplified cost assumptions**  
  The cost model is based on illustrative assumptions around volume, quality mix, and unit costs. While useful for estimating magnitude, actual impact will vary by operation.

- **Static model environment**  
  The analysis assumes consistent product attributes and does not account for changes over time, such as seasonal variation, storage conditions, or supply chain disruptions.

- **Model deployment considerations**  
  The selected model (KNN) delivers strong performance but may require optimization for scalability and real-time use in high-volume environments.



### Next Steps

- **Validate with real operational data**  
  Test the model using live data from a distribution environment to confirm performance and refine assumptions.

- **Incorporate real-time inputs**  
  Integrate additional signals such as temperature, handling conditions, and time in transit to improve prediction accuracy.

- **Optimize for scalability**  
  Evaluate alternative models or optimizations that maintain performance while improving computational efficiency.

- **Expand to other perishable categories**  
  Extend the approach beyond bananas to assess applicability across broader product categories.

- **Refine cost model**  
  Replace simplified assumptions with company-specific data to generate more precise estimates of financial impact.



## Appendix

### A. Data Overview
### B. Data Preparation
### C. Model Development
### D. Model Evaluation Details
### E. Cost Model & Assumptions
### F. Additional Outputs (Optional)



### A. Data Overview

The analysis is based on a dataset of individual bananas, each described by measurable product attributes and labeled according to quality. The objective of the dataset is to classify items as either **"Good"** or **"Bad"** based on observable characteristics.

Key features include:
- Sweetness  
- Acidity  
- Ripeness  
- Weight  
- Size and other physical attributes related to quality  

The target variable, **quality**, is binary and represents whether an item meets quality standards.

![Feature Importance](assets/images/lr_feature_importance.png)

The dataset captures variation across these attributes, providing measurable signals that can be used to distinguish between high- and low-quality items. Features such as sweetness, ripeness, weight, and acidity exhibit meaningful variation across observations, supporting their use in classification.

The dataset is approximately balanced, with a near 50/50 distribution between good and bad classifications. This structure supports effective model training and evaluation by ensuring both classes are equally represented.

However, this distribution does not reflect real-world conditions. In practice, most perishable inventory is high quality, with a smaller proportion classified as low quality. As a result, separate assumptions are used in the cost model to better represent realistic operating environments when estimating business impact.

  
