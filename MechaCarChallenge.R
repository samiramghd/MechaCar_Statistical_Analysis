### Deliverable 1: Linear Regression to Predict MPG
# Add library() function to load the dplyr
library(dplyr)
# Import and read in the MechaCar_mpg.csv
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
# Using the summary() function, determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

### Deliverable 2: Create Visualizations for the Trip Analysis
