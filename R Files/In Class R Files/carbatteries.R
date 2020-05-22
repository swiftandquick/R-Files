datacb <- read.csv(file = "carbatteries.csv", 
                    head = TRUE, sep = ",")
x <- datacb$x
hist(x)
hist(x, freq=F)  #histgram area 1
plot(density(x)) #smooth histogram
hist(x, freq=F); lines(density(x)) #superimpose both

#hist(x,breaks=20,freq=TRUE,xlab="Car Battery Life Times",
#     ylab="freq",main="Histogram of Car Battery Life Times")
#make own histogram by other commands
rr=range(x) #gives the range
print(rr)
breaks=seq(1.5,5.0,by=0.5) #gives the breaks
print(breaks)
carbat.cut=cut(x, breaks, right=FALSE) #this cuts the data up
                                       # and puts it in bins
carbat.freq=table(carbat.cut) #makes the freq. distribution
print(carbat.freq)
plot(carbat.freq) #the histogram
cumfreq0=c(0,cumsum(carbat.freq)) #make the cumulative frequency
                                  #cumsum computes cumulative dist.
                                  #adding a starting element of 0
plot(breaks,cumfreq0,main="Car Battery Life Times",
     xlab="Car Battery Life Time",ylab="cumulative freq.") #plot ogive
lines(breaks,cumfreq0) #with lines
