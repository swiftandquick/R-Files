dataohm <- read.csv(file="ohmns.csv",head=T,sep=",") # Separate by comma.  
# print(dataohm)
# This is a comment!  
x <- dataohm$V # Select the V column from the ohms.csv file as ""x".  
y <- dataohm$I # Select the I column from the ohms.csv file as ""y". 
# print(x)
# print(y)
# jpeg(filename = "ohmns.jpeg", width = 480, height = 480, units = "px", 
#      pointsize = 12)
reg1 <- lm(data = dataohm)
plot(data=dataohm, I ~ V, xlab = "V", ylab = "I", main = "Ohm's Law",
     ylim = c(0,2))
abline(reg1)
sumreg1 <- summary(reg1)
print(sumreg1)
# dev.off() #I am done!  
# plot(x, y)
