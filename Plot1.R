setwd("C:/Users/Mike/Documents/testdir/ExploreData")

all_data <- read.csv("household_power_consumption.txt", sep = ';', na.strings="?")
  
  all_data$Date <- as.Date(all_data$Date, format="%d/%m/%Y")

  real_data <- subset(all_data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

  hist(real_data$Global_active_power, main="Power Consumption", 
        xlab="(kilowatts)", ylab="Minutes", col="blue")


  dev.copy(png, file="Plot1.png", height=480, width=480)
dev.off()
