library(sqldf)

# 2007-02-01 and 2007-02-02
data <- read.csv.sql("household_power_consumption.txt",
                     header = TRUE,
                     sep = ';',
                     sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                     eol = "\n")

# Convert date and time to one Dt column
data$Dt <- paste(data$Date, data$Time)
data$Dt <- strptime(data$Dt, format = '%d/%m/%Y %H:%M:%S')
