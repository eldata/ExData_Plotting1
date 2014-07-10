## Plot1.R ##

##  Getting full dataset:
consumption <- read.csv("./household_power_consumption.txt",sep=";",na.strings='?',header=TRUE,colClasses = c("character",rep("factor",1),rep("numeric",7)))

##  Subsetting the data:
selection<-consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]

##  Plot 1 Setup:
hist(selection$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")

## Saving the plot as a PNG file:
dev.copy(png, file = "plot1.png") 
dev.off() ## close PNG device
