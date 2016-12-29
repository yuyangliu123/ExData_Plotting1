source("load_data.R")

png("plot3.png")
plot(df$Time,df$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(df$Time,df$Sub_metering_2,type = "l",col="red")
lines(df$Time,df$Sub_metering_3,type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),
       lty=c(1,1,1),
       lwd = c(1,1,1),
       col = c("black","red","blue"))
dev.off()