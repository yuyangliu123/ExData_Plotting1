source("load_data.R")

png("plot1.png")
hist(df$Global_active_power,
     col="red",
     xlab ="Global Active Power (klowatts)",
     main = "Global Active Power" )
dev.off()