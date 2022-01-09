#January 9th 2021

#libraries
library(dplyr)
library(ggplot2)

# Deliverable 1:  Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

mecha_car <- read.csv('MechaCar_mpg.csv')
head(mecha_car)

#generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))

#look at variables with significant relationship with mpg:
ggplot(data = mecha_car, aes(x=vehicle_length, y= mpg)) + geom_point()
ggplot(data = mecha_car, aes(x=ground_clearance, y= mpg)) + geom_point()


# Deliverable 2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

# Deliverable 3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population

# Deliverable 4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


