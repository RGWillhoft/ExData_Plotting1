# coursera: Exploratory Data Analysis
# Peer-gradded Assigment: Course Project 1
# Plot #4
# RG Willhoft, 2019

source("load_data.R")

png("plot4.png")

par(mfrow = c(2,2))

# Upper-left Plot (same as plot 2)
plot(power02$DateTime, power02$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "n")
lines(power02$DateTime, power02$Global_active_power)

# Upper-right Plot
plot(power02$DateTime, power02$Voltage, 
     xlab = "datetime",
     ylab = "Voltage",
     type = "n")
lines(power02$DateTime, power02$Voltage)

# Lower-left Plot (same as plot 3)
plot(power02$DateTime, power02$Sub_metering_1, 
     xlab = "",
     ylab = "Energy sub metering",
     type = "n")
lines(power02$DateTime, power02$Sub_metering_1, col = "black")
lines(power02$DateTime, power02$Sub_metering_2, col = "red")
lines(power02$DateTime, power02$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1, bty = "n")

# Lower-right Plot
plot(power02$DateTime, power02$Global_reactive_power, 
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "n")
lines(power02$DateTime, power02$Global_reactive_power)

dev.off()
