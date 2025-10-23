# Tutorial 10 - Regression Analysis

**Module:** IT2120 - Probability and Statistics  
**Department:** Information Technology  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Questions

### Question 1

A small study is conducted involving 17 infants to investigate the association between gestational age at birth (in weeks) and birth weight (in grams). Here, researcher is interested in identifying whether birth weight of an infant has an effect from gestational age.

**Scatter Plot: Birth Weight vs Gestational Age**

```
Birth_Weight
4000│           •
3500│        •  •
3000│      •  • •
2500│    •  •
2000│  • •  •
1500│ •  •
1000│•
    └────────────────────────
     28 30 32 34 36 38 40 42
           Gestational_Age
```

i. What is the dependent variable (response variable) & independent variable (predictor variable)?

ii. You have given the scatter plot of gestational age and birth weight. Identify whether there is any relationship between gestational age and birth weight.

---

### Question 2

Identify the type of relationship.

**Chart 1: BMI vs Age**

```
BMI
50│    •
45│  • • •
40│ • • • • •
35│• • • • • •
30│ • • • • • •
25│• • • • • • •
20│ • • • • •
15│  • •
  └──────────────────────────
   15 20 25 30 35 40 45 50 55 60 65 70 75
                Age
```

**Chart 2: Sign Legibility Distance vs Driver Age**

```
Sign Legibility Distance (feet)
600│••
500│ •••
400│  ••••
300│    •••••
   └─────────────────────────
    15 25 35 45 55 65 75 85
         Driver Age (years)
```

---

### Question 3

The objective of the director of planning of Sunflowers Apparel Ltd., is to forecast annual sales for all new stores, based on store size. To examine the relationship between the store size in square feet and its annual sales, data were collected from a sample of 14 stores. Figure below displays the scatter plot for the data.

**Scatter Diagram for Site Selection**

```
Annual Sales ($Millions)
12│              •
  │           •  •
  │        •  •
  │     •  •
  │  •  •
4 │•  •
  └────────────────────
      Square Feet (000)
```

R outputs of the regression model are shown below:

**Regression Model**

**Coefficients:**

| | |
|:---|:---|
| Intercept | 0.9645 |
| Square feet | 1.6699 |

**Analysis of Variance Table**

| | df | Sum Sq | Mean Sq | F value | Pr(>F) |
|:---|:---|:---|:---|:---|:---|
| Response: Annual Sales | | | | | |
| Square feet | A | B | C | | 0.000 *** |
| Residuals | D | 11.2067 | E | | |
| Total | | 105.7476 | F | G | |

Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

**Given Information:**
- ΣX = 40.9
- ΣY = 81.8
- ΣXY = 302.30
- Standard deviations are Sₓ = 1.71 and Sᵧ = 2.98
- Where X is the square feet and Y is the annual sales

i. What can be concluded using the scatterplot?

ii. Find values marked A, B, C, D, E, F and G in the ANOVA table (Show workings).

iii. State the estimated regression equation in the form of ŷ = b₀ + b₁x and state how much more sales are expected if they increase the store size by 1,000 square feet.

iv. Calculate the Pearson's linear coefficient of correlation between the two variables.

v. Calculate coefficient of determination and interpret it.

vi. Use the regression equation to predict annual sales, if the store size is 10,000 square feet.

---

**End of Tutorial 10**

**FACULTY OF COMPUTING**
