# MechaCar_Statistical_Analysis

In this analysis, we will use data sets on prototype vehicles for MechCar to do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of prototypes 
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Brainstorm a statistical test to help MechaCar determine what metrics are best used to evaluate competition.

## Linear Regression to Predict MPG

Based on the output of the linear regression, the linear model used to predict mpg is as follows:
<br/>
<br/>
mpg = 6.267e+00Vehicle_length + 1.245e-03Vehicle_weight + 6.877e-02spoiler_angle + 3.546e+00ground_clearance + -2]3.411e+00AWD + -1.040e+02
<br/>
<br/>
This model was calculated using the below output from the lm() function in R:
<br/>
![Lin_Reg_Model](/Images/Lin_Reg_Model.png)
<br/>
For each independent variable, we can look at their P value to determine if they cause non-random variance in mpg.  I obtained the below results from the analysis:
![Indep_Var_Pval](/Images/Indep_Var_Pval.png)
<br/>
Using the significant value of .05, Vehicle length, vehicle weight, and ground clearance all have low P values, which allows us to reject the null hypothesis and assume these variables provide non random variance in mpg.  Spoiler angle and ground clearance have higher P values, suggesting we cannot reject the null hypothesis and we cannot assume they cause non random variance in mpg. The R squared value for the model is .7149.  Therefore we can assume 71.49% of the variability in mpg can be explained by this model.  The overall P value for the model is 5.35e-11, which is much lower than our significance level of .05.  Therefore, we can reject the null hypothesis and claim that slope is not zero, and that the relationship is not produced by random chance.  I would conclude that this is an OK model to predict mpg of MechaCar prototypes, as the R squared value is only at 71.49% and we cannot confirm that all independent variables of the model causes variation in mpg. 

## Summary Statistics on Suspension Coils

I calculated the below summary statistics for all manufacturing lots in total:
<br/>
![Summary_Stats_All](/Images/Summary_Stats_All.png)
<br/>
Here, we can see that the variance for all the lots in total is about 62 pounds per square.  Since this is under the 100 pound variance limit, the current manufacturing data for all lots in total meets design specifications.  
<br/>
Below are the summary statistics for each lot individually:
<br/>
![Summary_Stats_Lot](/Images/Summary_Stats_Lot.png)
<br/>
Lot 1 and lot 2 have low variances of .98 and 7.47, indicating they meet design specifications.  Lot 3 has a very large variance of 170, indicating lot 3 does not meet design specifications.

## T-Tests on Suspension Coils

I performed the t test on all manufacturing lots in total and on each individually, which compares the means of each data set to the population mean of 1500 pounds per square inch.  My results are as follows:
<br/>
<br/>
All manufacturing lots:
![Ttest_All](/Images/Ttest_All.png)
Lot 1:
![Ttest_Lot1](/Images/Ttest_Lot1.png)
Lot 2:
![Ttest_Lot2](/Images/Ttest_Lot2.png)
Lot 3:
![Ttest_Lot3](/Images/Ttest_Lot3.png)
<br/>
<br/>

The P values for all lots as a total, lot 1, and lot 2 have P values greater than our significance level of .05.  Therefore we can conclude that we fail to reject the null hypothesis, which states there is no statistical difference between the sample and population means.   However, the lot 3 P value is slightly lower than our significance level,  indicating that we reject that null hypothesis that there is no statistical difference between the lot 3 mean and the population mean. 

## Study Design: MechaCar vs Competition

I would consider the metrics of highway fuel efficiency and safety ratings to be two important metrics that interest a consumer and allow companies to flourish against their competition .
With these metrics, we would perform two different tests - one to measure sales against highway fuel efficiency and another to measure sales against safety ratings.  Therefore, will we have two sets of hypotheses which are as follows:
<br/>
<br/>
H0:  Automaker companies with higher safety ratings and reviews will have similar sales to their competitors with lower safety ratings.
<br/>
<br/>
Ha: Automaker companies with higher safety ratings and reviews will have 20% more sales in their vehicles compared to their competitors with lower safety ratings.
<br/>
<br/>
H0: Automaker companies that sell vehicles with better highway fuel efficiency will have similar sales in those vehicles to their competitors with less fuel efficient options.
<br/>
<br/>
Ha:  Automaker companies that sell vehicles with better highway fuel efficiency will have 20% more sales in those vehicles than their competitors with less fuel efficient options.
<br/>
<br/>
Data needed to run the statistical tests would a list competitor motor vehicles companies, their total sales, sales per model of vehicle, safety ratings on each model vehicle, and fuel efficiency info each model vehicle. 
We would collect historical data on this companies to gather the information. After data is collected, we can run two linear regression tests to see if fuel efficiency and safety rating effect sales.  We can use this test because we can generate a model that will predict sales (the dependent variable)  based off fuel efficiency and safety ratings.  We can also run a multiple linear regression tests for both fuel efficiency and safety ratings, instead of testing their effect on sales separately.  The linear regression testing will be helpful because we can use the R squared value to help us determine how much variability in sales is due to fuel efficiency and safety ratings.  
