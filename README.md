# MechaCar Statistical Analysis
 
## Overview

Performed a statistical analysis of AutosRS new MechaCar which is suffering from production problems. We analyzed manufacturing issues with suspension coils and tried to discover what variables affect MPG the most. 

## Results

## Linear Regression to Predict MPG

![Screenshot of linear regression MPG](https://github.com/mgochis/MechaCar_Statistical_Analysis/blob/42c54a960425cfc137c8bd80f961bd3ca10c5a19/resources/mpg.png)

1. The variables that showed the most non-random effect on MPG are vehicle length and ground clearance. These variables had a p-value less than 0.05 indicating that they are statistically significant. 

2. Our p-value is 0.0000000000535 which not zero so the slope of the linear model could not be considered zero, although it is close to zero. 

3. I would not consider the linear model effective at predicting MPG of MechCar prototypes. The R-squared score indicates that the model is 71% accurate, which is not high enough to accurately predict MPG. If we added more variables, we may be able to get the R-squared score much higher. 

## Summary Statistics on Suspension Coils

![Screenshots of total_summary and lot_summary](https://github.com/mgochis/MechaCar_Statistical_Analysis/blob/42c54a960425cfc137c8bd80f961bd3ca10c5a19/resources/total_summary.png)
![Screenshots of total_summary and lot_summary](https://github.com/mgochis/MechaCar_Statistical_Analysis/blob/42c54a960425cfc137c8bd80f961bd3ca10c5a19/resources/lot_summary.png)

1. The design specifications for the MechaCar suspension coils dictate that the variance must not exceed 100 pounds per square inch. The total_summary shows a variance of 62 which is within the required threshold. The lot_summary indicates that there is a much higher variance on Lot3 of 170.28 which is well outside the threshold requirements. The lot_summary shows that there may have been a manufacturing issue for lot3. 

## T-Tests on Suspension Coils

![Screenshots of T-Tests](https://github.com/mgochis/MechaCar_Statistical_Analysis/blob/42c54a960425cfc137c8bd80f961bd3ca10c5a19/resources/t-tests.png)

1. The T-Tests performed on the suspension coil summary, and lots prove to show the same results as the summary statistics above. As a whole, the summary of all the lots has a p-value of 0.06028 which is not below the threshold of 0.05 to reject the null hypothesis. Individually, lot1 and lot2 performed well enough with p-values of 1 and 0.6072, indicating that both lots are above the threshold. Lot3 on the other hand has a p-value of 0.04168 which means that lot was not manufactured to the requirements. 

## Study Design: MechaCar vs Competition

1. We should compare maintenance costs between MechaCar and the competition. 
2. MechaCar's maintenance costs are equal or lower than that of the competition's maintenance costs. 
3. The best statistical test for this would be t-tests. 
4. We would need the cost of maintenance performed on vehicles as they age and increase in miles driven. 

