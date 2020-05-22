x <- c(2,22,15,16,34,6,1,19,18)
x <- sort(x)
n <- length(x)
nn=(3/4)*n
print(nn)
nn=ceiling(nn)
print(nn)
p75=x[nn]
print(p75)
p75=quantile(x,.75)
print(p75)
pq=quantile(x,c(.25,.5,.75))
print(pq)
ss=summary(x)
print(ss)
y <- c(2,22,15,16,34,6,1,19,18,36)
y=sort(t)
n=length(y)
nn=0.7*n
print(nn) 
# Prints out 7, to calculate p70, it means it's in the 7th data point.  
p70=(x[nn]+x[nn+1])/2
print(p70)
boxplot(y,x,main="Cool Data",xlab="x",horizontal=T) 
# Horizontal=T changes the graph to horizontal.  At default, it's vertical.  