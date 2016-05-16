source("load_data.R")
plot3 <- function(){
  df <- load_data()
  png("plot3.png",width=480,height=480) 
  plot(df$Time, df$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black") 
  lines(df$Time, df$Sub_metering_2, col="red") 
  lines(df$Time, df$Sub_metering_3, col="blue") 
  legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
  dev.off() 
}