# import tidy verse
library("tidyverse")

# import csv file
mecha_table <- read.csv(file="MechaCar_mpg.csv")

# linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)

# summary of linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))

# import csv file
coil_table <- read.csv(file="Suspension_Coil.csv")

# summary table
summary_coil <- coil_table%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI),.groups='keep')

# summary by lot
lot_summary <- coil_table%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI),.groups='keep')


# t test for PSI for all lots
t.test(coil_table$PSI, mu=1500)

# t tests for each lot 

t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot=="Lot1"), mu=1500)

t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot=="Lot2"), mu=1500)

t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot=="Lot3"), mu=1500)






