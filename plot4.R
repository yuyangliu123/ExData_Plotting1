source("load_data.R")

png("plot4.png")
par(mfrow=c(2,2),mar=c(4,2,2,2))
plot(df$Time,df$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power")
plot(df$Time,df$Voltage,type = "l",xlab = "datatime",ylab ="Voltage" )
plot(df$Time,df$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(df$Time,df$Sub_metering_2,type = "l",col="red")
lines(df$Time,df$Sub_metering_3,type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),lty=c(1,1,1),
       lwd = c(1,1,1),
       col = c("black","red","blue"),bty = "n"
)
plot(df$Time,df$Global_reactive_power,type = "l",xlab = "datatime",ylab = "Global_reactive_power")
dev.off()