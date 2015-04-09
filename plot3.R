# Read the data

source("read_data.R")

# Line chart #3 on Sub_metering_1, Sub_metering_3, Sub_metering_3

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
       col = c('black', 'red', 'blue'))

dev.copy(png, 'plot3.png')
dev.off()
