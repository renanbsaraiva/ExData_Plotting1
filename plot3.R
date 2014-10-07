data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")

data2 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

data2$Global_active_power <- as.numeric(as.character(data2$Global_active_power))
data2$Sub_metering_1 <- as.numeric(as.character(data2$Sub_metering_1))
data2$Sub_metering_2 <- as.numeric(as.character(data2$Sub_metering_2))
data2$Sub_metering_3 <- as.numeric(as.character(data2$Sub_metering_3))

png("plot3.png", width=480, height=480)

plot(data2$Sub_metering_1, type="l", xaxt="n", ylab="Energy sub metering", xlab="")
points(data2$Sub_metering_2,type="l", col="red")
points(data2$Sub_metering_3,type="l", col="blue")
axis(1, at=c(0,1450,2900), labels=c("Thu","Fri","Sat"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col=c("black","red","blue"))

dev.off()
