# Read the data

source("read_data.R")

# Line chart #2 for Datetime and Global_active_power

plot(data$Dt, data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.copy(png, 'plot2.png')
dev.off()
