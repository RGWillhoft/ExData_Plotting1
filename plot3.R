# coursera: Exploratory Data Analysis
# Peer-gradded Assigment: Course Project 1
# Plot #3
# RG Willhoft, 2019

source("load_data.R")

png("plot3.png")

plot(power02$DateTime, power02$Sub_metering_1, 
     xlab = "",
     ylab = "Energy sub metering",
     type = "n")
lines(power02$DateTime, power02$Sub_metering_1, col = "black")
lines(power02$DateTime, power02$Sub_metering_2, col = "red")
lines(power02$DateTime, power02$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)

dev.off()
