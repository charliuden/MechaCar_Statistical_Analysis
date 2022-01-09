# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Below is a screen shot of the output form R's lm() function: 
![multiple_linear_regression_screenshot.png](https://github.com/charliuden/MechaCar_Statistical_Analysis/blob/main/images/multiple_linear_regression_screenshot.png)

Vehicle length and ground clearance provide a non-random amount of variance to the mpg (miles per gallon) values in the dataset. The slope of the linear model is not zero. Under 'value' in the output, the vehicle_length cofficient is equal to -6.559 and the ground_clearance coefficient is equal to 6.551. These coeficients translate to the model's slope. 

The R-squared value of this model is 0.7149, indicating that it does predict mpg of MechaCar prototypes effectively. However, with so few variables included in the model, we should take overfitting into consideration. While the model does a good job of predicting this dataset, it may be less reliable when predicting future scenarios or datasets. 

