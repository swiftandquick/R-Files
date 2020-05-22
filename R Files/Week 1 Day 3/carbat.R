datacb <- read.csv(file="carbatteries.csv",head=T,sep=",")
x <- dataccb$x
breaks=seq(1.5,5.0,by=0.5) # Gives the breaks or size of bin.  
print(breaks)
carbat.cut=cut(x,breaks,right=T) # This cuts the data up.  
# Makes the bins.  
carbat.freq=table(carbat.cut) # Makes frequency distribution.  
print(carbat.freq)
l=length(x)
print(l)
hist(x)
hist(x,breaks=breaks,main="Histogram of Car Battery Life Times")
plot(carbat.freq) # Give us lines for each point, but the result is the same.  
cumfreq0=c(0,cumsum(carbat.freq))
plot(breaks,cumfreq0,main="Car Battery Life Times",
     xlab="Car Battery Life Time",ylab="Cumulative Frequency.")
lines(breaks,cumfreq0)
stem(x, scale=1)
