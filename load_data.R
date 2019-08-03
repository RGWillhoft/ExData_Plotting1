# Load data needed for the project

# Get the entire dataset
power <- read.table("data/household_power_consumption.txt", 
                    header = TRUE, 
                    sep = ";", 
                    colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), 
                    na.strings = c("?"),
                    stringsAsFactors = FALSE)

# Create part that is needed
power02 <- subset(power, power$Date %in% c("1/2/2007", "2/2/2007"))
power02$DateTime <- as.POSIXct(paste(power02$Date, power02$Time), format = "%d/%m/%Y %H:%M:%S")

# cleanup
rm("power")
