createDf <- function (){
  
  file="C:\\e-books and youtube\\Coursera\\Data\\Exploratory Data Analysis\\Exercises\\FirstWeek\\household_power_consumption.txt"
  tt<-read.table(file, header=TRUE, sep=";")
  
  ## create a vect with dates
  tt1<-as.Date(tt$Date, format="%d/%m/%Y")
  
  ## select reading only between 2007-02-01 and 2007-02-02
  tt2<-(tt1 >= as.Date("2007-02-01" , format="%Y-%m-%d") & tt1 <= as.Date("2007-02-02" , format="%Y-%m-%d") )
  tt3<- tt[tt2,]
  
  ## hist(as.numeric(as.character(tt3$Global_active_power)), col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
  
  
  
  
  
  ## check that no "?" are present ??

  
  
  ## create a new col with date&time
  t1<-paste (tt3$Date, tt3$Time)
  newCol<-strptime(t1, "%d/%m/%Y %H:%M:%S")
  newtt3<-cbind(newCol, tt3)
  


}