## Dowloaded data in WD,and read table with stringsAsFactors=F

data1<- read.table("household_power_consumption.txt", header = TRUE,stringsAsFactors = F, sep = ";", na.strings= "?")

## Subset data for two Days. 

Subsetdata <- data1[data1$Date %in% c("1/2/2007","2/2/2007"), ]

## Plot 3


datetime <- strptime(paste(Subsetdata$Date, Subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)

plot(datetime, Subsetdata$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Subsetdata$Sub_metering_2, type="l", col="red")
lines(datetime, Subsetdata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
