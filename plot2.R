## Dowloaded data in WD,and read table with stringsAsFactors=F

data1<- read.table("household_power_consumption.txt", header = TRUE,stringsAsFactors = F, sep = ";", na.strings= "?")

## Subset data for two Days. 

Subsetdata <- data1[data1$Date %in% c("1/2/2007","2/2/2007"), ]

## plot 2

datetime <- strptime(paste(Subsetdata$Date, Subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)

plot(datetime, Subsetdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
