> getwd()
[1] "/Users/apple/Desktop/coursera/exploratory data analysis/WEEK1"
> data <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", nrows = 2075259, check.names = F, stringsAsFactors = F, comment.char = "", quote = '\"')

> data$Date <- as.Date(alldata$Date, format = "%d/%m/%Y")
> #read all the data

> data2 <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
> rm(data)
> #subset the 2-day data

> DateTime<- paste(as.Date(data2$Date), data2$Time)
> data2$Datetime<- as.POSIXct(DateTime)
> png(filename='plot2.png',width=480,height=480,units='px')
> #open device

> plot(data2$Global_active_power ~ data2$Datetime, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
> # plot data

> x<-dev.off
> #close device


