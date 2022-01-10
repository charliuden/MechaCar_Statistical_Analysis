#January 9th 2021

#libraries
library(dplyr)
library(ggplot2)

#----
# Deliverable 1:  Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

mecha_car <- read.csv('MechaCar_mpg.csv')
head(mecha_car)

#generate multiple linear regression model
lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)

summary(lm)

#----
# Deliverable 2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

suspension_coil  <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

head(suspension_coil)

suspension_coil <- as_tibble(suspension_coil)

#get summary statistics for coil PSI (pounds per square inch)
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

#get summary of PSI by manufacturing lot

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

#----
# Deliverable 3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population

#Is the PSI across all manufacturing lots statistically different from the population mean of 1,500 pounds per square inch?

t.test(suspension_coil$PSI, mu=1500)

#Is the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

lot1 <- suspension_coil %>% filter(Manufacturing_Lot=="Lot1") 
lot2 <- suspension_coil %>% filter(Manufacturing_Lot=="Lot2")  
lot3 <- suspension_coil %>% filter(Manufacturing_Lot=="Lot3") 
#compare means of the three samples to the population mean of 1500 psi:
t.test(lot1$PSI, mu=1500) 
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)


#----
# Deliverable 4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

# see readme
