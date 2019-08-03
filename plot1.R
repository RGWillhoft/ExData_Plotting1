# coursera: Exploratory Data Analysis
# Peer-gradded Assigment: Course Project 1
# Plot #1

source("load_data.R")

png("plot1.png")

hist(power02$Global_active_power, 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
