# Heart Disease Logistic Regression Project

## Overview

This project investigates the relationship between clinical indicators and the presence of heart disease using a public dataset. We apply logistic regression modeling and conduct exploratory analysis to identify key risk factors.

The final report includes:

- A logistic regression model using age, cholesterol, and resting blood pressure
- Gender-based analysis of heart disease prevalence
- A comparison of maximum heart rate by heart disease status
- Multiple visualizations to support findings

---

## Repository Structure
```
final_project/ 
├── data/ # Contains the heart.csv dataset 
├── scripts/ # R scripts for modeling, table, and figure generation 
├── output/ # Auto-generated model file, CSV table, and PNG figure 
├── heart report.Rmd # Final report (R Markdown) 
├── heart report.html # Rendered HTML report (output) 
├── Makefile # Automates report generation 
└── README.md
```
---

## How to Reproduce the Report

1. Ensure you have the following R packages installed:

```r
install.packages(c("ggplot2", "rmarkdown", "knitr"))
```

2. In your terminal or RStudio Terminal, navigate to the project folder and run:

```bash
make
```

This will:
- Fit the logistic regression model
- Generate a results table and figure
- Knit the `report.Rmd` into a complete `report.html`

---