setwd("C:/Users/Mike/Documents/testdir/ExploreData")
all_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
all_data$Date <- as.Date(all_data$Date, format="%d/%m/%Y")


real_data <- subset(all_data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

dt <- paste(as.Date(data$Date), real_data$Time)
real_data$Datetime <- as.POSIXct(dt)

plot(real_data$Global_active_power~data$Datetime, type="l",
          ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
