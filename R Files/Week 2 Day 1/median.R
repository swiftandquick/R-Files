x <- c(90,95,80,60,75)
print(x)
me <- mean(x) #mean
print(me)
y <- c(9,2,7,11,14)
print(y)
y <- sort(y) # Sort numbers in y array from smallest to largest.  
print(y)
med <- median(y) #median
print(med)
ss=sum(x) # Sum of the numbers in x array.  
nn=length(x)
me=ss/nn
print(me)
xx <- c(120,121,131,80,79,55,141,65,75,150)
var1 <- var(xx)
print(var1)
sd1 <- sd(xx)
print(sd1)
me2=mean(xx)
xx2=xx-me2
print(xx2)
ss=sum(xx-me2)
print(ss)
ss=sum(xx2^2)
nn=length(xx2)
var2=xx/(nn-1)
print(var2)
sd2=sqrt(var2)
print(sd2)