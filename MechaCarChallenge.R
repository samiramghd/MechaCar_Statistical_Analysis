### Deliverable 1: Linear Regression to Predict MPG
# Add library() function to load the dplyr
library(dplyr)
# Import and read in the MechaCar_mpg.csv
MechaCar <- read.csv(file='MechaCar_mpg.csv',
                     check.names=F,stringsAsFactors = F)
# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length +
     vehicle_weight +
     spoiler_angle +
     ground_clearance + AWD,data=MechaCar)
# Using the summary() function, determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length +
             vehicle_weight +
             spoiler_angle +
             ground_clearance + AWD,data=MechaCar))

### Deliverable 2: Create Visualizations for the Trip Analysis
# import and read in the Suspension_Coil.csv file as a table
Suspension <- read.csv(file='Suspension_Coil.csv',
                       check.names=F,
                       stringsAsFactors = F)
# a total_summary dataframe using the summarize() function
total_summary <- Suspension %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI),
                                          .groups = 'keep')
# a lot_summary dataframe using the group_by() and the summarize() functions 
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                        Median=median(PSI),
                                                                        Variance=var(PSI),
                                                                        SD=sd(PSI),
                                                                        .groups = 'keep')
#

