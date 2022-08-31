# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)

# Import CSV to DataFrame
mechacar_mpg_df <- read.csv(file='./resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)

# Linear Regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)

# P-Value and R-Squared Value
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))



# Deliverable 2: Create Visualizations for the Trip Analysis

# Import CSV to DataFrame
suspension_coil_df <- read.csv(file = './resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Total Summary DataFrame
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Lot Summary DataFrame
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3: T-Tests on Suspension Coils
t.test(suspension_coil_df$PSI, mu=1500)

t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)