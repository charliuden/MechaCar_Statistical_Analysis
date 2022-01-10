# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Below is a screen shot of the output form R's lm() function: 
![multiple_linear_regression_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/multiple_linear_regression_screenshot.png)

Vehicle length and ground clearance provide a non-random amount of variance to the mpg (miles per gallon) values in the dataset. The slope of the linear model is not zero. Under 'value' in the output, the vehicle_length coefficient is equal to -6.559 and the ground_clearance coefficient is equal to 6.551. These coefficients translate to the model's slope. 

The R-squared value of this model is 0.7149, indicating that it does predict mpg of MechaCar prototypes effectively. However, with so few variables included in the model, we should take overfitting into consideration. While the model does a good job of predicting this dataset, it may be less reliable when predicting future scenarios or datasets. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meet this design specification for manufacturing lots in total but not each lot individually. Across all manufacturing lots, the variance is 62.3 pounds per square inch. When the data is grouped by manufacturing lot, lots 1 and 2 fall well within the suspension limits, but at 170 pounds per square inch, lot 3 exceeds the variance limit. 

![total_summary_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/total_summary_screenshot.png)

![lot_summary_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_screenshot.png)

## T-Tests on Suspension Coils

A one-sided t-test gives a p-value of 0.06, indicating that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch. If each lot is compared to the population mean separately, we see that only lot 3 has a p-value below 0.05. The mean PSI from lot 3 is significantly different from the population mean. 

![one-sided-t-test_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/one-sided-t-test_screenshot.png)

Below are the results of a t-test on lot 3. 
![lot3-t-test_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/two-sided-t-test_screenshot.png)

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

How does MechaCar's fuel efficiency compare with its competitors and can we use this information to set the cost fo the car? The assumption here is that consumers want an inexpensive fuel-efficient car. How can MechaCar meet consumer needs while optimizing revenue and staying competitive? 

To answer these questions, we first need to check that there is a relationship between the cost of a car and its fuel efficiency. A linear regression model will help us find this relationship, with the dependant variable being car cost and fuel efficiency being the independent variable.

H0 : The slope of the linear model is zero, or m = 0
Ha : The slope of the linear model is not zero, or m ≠ 0

R's lm() function would allow us to build a linear model and find the slope and R-squared value. If the slope is greater is not 0 then we would reject the null hypothesis and say that there is a relationship between fuel efficiency and car cost. 

In order to confidently predict an appropriate sale price for MechaCar, we also need to check that our R-squared value is closer to 1. If it is, then the model will be a good predictor of the car price. 

A dataset containing car cost and fuel efficiency from other car companies would allow us to build this linear model.  Ideally, the cars represented in the dataset would either be similar in manufacturing cost or manufacturing cost would be included in the dataset (allowing us to include manufacturing cost in the model or filter for costs similar to MechaCar). 












