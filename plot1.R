## Dowloaded data in WD,and read table with stringsAsFactors=F

data1<- read.table("household_power_consumption.txt", header = TRUE,stringsAsFactors = F, sep = ";", na.strings= "?")

## Subset data for two Days. 

Subsetdata <- data1[data1$Date %in% c("1/2/2007","2/2/2007"), ]

## Plot 1

png("plot1.png", width=480, height=480)
hist(Subsetdata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

