# Read the data

source("read_data.R")

# Histogram #1 on Global_active_power

hist(data$Global_active_power, 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.copy(png, 'plot1.png')
dev.off()


