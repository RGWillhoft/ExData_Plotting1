# coursera: Exploratory Data Analysis
# Peer-gradded Assigment: Course Project 1
# Plot #2
# RG Willhoft, 2019

source("load_data.R")

png("plot2.png")

plot(power02$DateTime, power02$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "n")
lines(power02$DateTime, power02$Global_active_power)

dev.off()
