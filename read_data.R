library(sqldf)

# 2007-02-01 and 2007-02-02
data <- read.csv.sql("household_power_consumption.txt",
                     header = TRUE,
                     sep = ';',
                     sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                     eol = "\n")

# Convert date
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')

# Convert time
data$Time <- strptime(data$Time, format = '%H:%M:%S')

# Add day of week
data$Day = strftime(data$Date,'%a')
