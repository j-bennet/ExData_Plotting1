# Read the data

source("read_data.R")

# Combined chart #4

par(mfrow = c(2, 2))

# top left
plot(data$Dt, data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

# top right
plot(data$Dt, data$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

# bottom left
plot(data$Dt,
     data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")

lines(data$Dt,
      data$Sub_metering_2,
      col = "red")

lines(data$Dt,
      data$Sub_metering_3,
      col = "blue")

legend("topright",
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty = c(1, 1, 1),
       col = c('black', 'red', 'blue'),
       bty = "n")

# bottom right
plot(data$Dt, data$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime")

dev.copy(png, 'plot4.png')
dev.off()
