file_name<-"exdata_data_household_power_consumption.zip"
url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,file_name,method = "curl")

  if(!file.exists("household_power_consumption.txt")){
  unzip("exdata_data_household_power_consumption.zip")
  }    

df<-read.table("./household_power_consumption.txt",
               header = TRUE,
               sep = ";",
               colClasses=c("character","character",rep("numeric",7)),
               na="?")[grepl("^1.2.2007|^2.2.2007"
                             ,read.table("./household_power_consumption.txt",
                                         header = TRUE,
                                         sep = ";")$Date),]

df$Date<-as.character(df$Date)
df$Date<-as.factor(df$Date)

df$Time<-strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S",tz="GMT")

df$Date<-as.Date(df$Date,"%d/%m/%Y")