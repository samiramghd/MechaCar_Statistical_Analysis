# MechaCar_Statistical_Analysis

Statistics and R

### Overview of Project: Explain the purpose of this analysis.

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. In this challenge, we'll do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. we’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del1-1.PNG)

in the picture we can see the coefficients and the linear regression model for our dataset would be

**mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)**

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del1-2.PNG)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results the vehicle length, and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length, and ground clearance have a significant impact on miles per gallon on the MechaCar prototype.
the vehicle weight, spoiler angle, and AWD are not statistically significant,and provide random amount of variance.

#### Is the slope of the linear model considered to be zero? Why or why not?

the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model.the higher the correlation is between two variables, the more that one variable can explain/predict the value of the other.
This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model.

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. we’ll create a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del2-1.PNG)

- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del2-2.PNG)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The variance of the total manufacturing lot is 62.29 less than 100, which is within the 100 PSI variance requirement. after reviewing the data by lot number, Lot1 is 0.98 and Lot2 is 7.47 which is less than 100 PSI variance, but Lot3 is 170.28 which is greater than 100 PSI and does not meet the design specifications.

## T-Tests on Suspension Coils

The t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset.
We perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
in the picture below we can see the summary for all Lots

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del3-1.PNG)

our p-value for all Lots is 0.06, which is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.


![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del3-2.PNG)

our p-value for Lot1 is 1, which is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del3-3.PNG)

our p-value for Lot2 is 0.60, which is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![This is an image](https://github.com/samiramghd/MechaCar_Statistical_Analysis/blob/main/images/del3-4.PNG)

our p-value for Lot3 is 0.04, which is below our significance level. Therefore, there is sufficient evidence to reject the null hypothesis, and we would state that the two means are not statistically similar.

## Study Design: MechaCar vs Competition

design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers. what I've considered for this study design is efficiency and price of vehicles between other manufacturers.

#### What metric or metrics are you going to test?

vehicle price, average usage, city or highway fuel efficiency, horse power, maintenance cost, safety rating. which because of the comprasion, vehicle price will be the dependent variable and the rest of the metrics independent variables. 

#### What is the null hypothesis or alternative hypothesis?

null hypothesis: the vehicle price is accurate based on key factors.

alternative hypothesis: the vehicle price is not accurate based on key factors.

#### What statistical test would you use to test the hypothesis? And why?

a multiple linear regression uses multiple independent variables to account for parts of the total variance observed in the dependent variable. so multiple linear would be a good choice for our statistical test.

#### What data is needed to run the statistical test?

we'll look at each independent variable to determine if there is a significant relationship with the dependent variable. Once we have evaluated each independent variable, we'll evaluate the r-squared value of the model to determine if the model sufficiently predicts our dependent variable. and the factors that have correlation with the vehicle price (dependent variable).

