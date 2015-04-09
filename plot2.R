# Read the data

source("read_data.R")

# Histogram #1 on Global_active_power

plot(data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = '')

dev.copy(png, 'plot2.png')
dev.off()
