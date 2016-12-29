source("load_data.R")

png("plot2.png")
plot(df$Time,df$Global_active_power,type = "l",
     xlab = "",ylab = "Global Active Power (klowatts)")
dev.off()