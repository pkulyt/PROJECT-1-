> getwd()
[1] "/Users/apple/Desktop/coursera"
>  data<- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", nrows = 2075259, check.names = F, stringsAsFactors = F, comment.char = "", quote = '\"')

> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> data2<- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
>  rm(data)
>  datetime <- paste(as.Date(data2$Date), data2$Time)

>  data2$Datetime <- as.POSIXct(datetime)
> #read all the data and subset the data2

>  png(filename='plot3.png',width=480,height=480,units='px')
> # open device

> with(data2, {plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2 ~ Datetime, col = 'Red')
  lines(Sub_metering_3 ~ Datetime, col = 'Blue')})
> legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
> #plot the data

>  x<-dev.off()
> #close device
