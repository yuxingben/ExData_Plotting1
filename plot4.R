source("load_data.R")
plot4 <- function(){
  df <- load_data()
  png("plot4.png",width=480,height=480) 
  png("plot4.png",width=480,height=480) 
  par(mfcol=c(2,2)) 
  # subplot 1 
  plot(df$Time, df$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA) 
   
  
  # subplot 2
  plot(df$Time, df$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black") 
  lines(df$Time, df$Sub_metering_2, col="red") 
  lines(df$Time, df$Sub_metering_3, col="blue") 
  legend("topright", lty=1, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
  
  
  # subplot 3 
  plot(df$Time, df$Voltage, type="l", xlab="datetime", ylab="Voltage") 
  
  
  # subplot 4
  plot (df$Time, df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power") 
  
  dev.off() 
  
}