data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")

data2 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

data2$Global_active_power <- as.numeric(as.character(data2$Global_active_power))

png("plot2.png", width=480, height=480)

plot(data2$Global_active_power, data$Day, ylab="Global Active Power (kilowatts)", type="l", xlab="", xaxt="n")
axis(1, at=c(0,1450,2900), labels=c("Thu","Fri","Sat"))

dev.off()
