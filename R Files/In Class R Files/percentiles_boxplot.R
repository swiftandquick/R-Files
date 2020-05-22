#this is doing by method in notes
x=c(2,22,15,16,34,6,1,19,18)
x=sort(x)
print(x)
n=length(x)
nn=(3/4)*n
print(nn)
nn=ceiling(nn) #since n is not integer round up
print(nn)
p75=x[nn] #take the nnth x value
print(p75)
#or do it like so which is more acurate
p75=quantile(x,.75)
print(p75)
pq=quantile(x,c(.25,.5,.75)) #get several percentiles
print(pq)
ss=summary(x) #gives summary of important stats.
print(ss)
#example 2
y=c(2,22,15,16,34,6,1,19,18,36)
y=sort(y)
print(y)
n=length(y)
nn=0.7*n
print(nn) #integer value therefore take average of 7th and 8th 
          #point
p70=(x[nn]+x[nn+1])/2
print(p70)
#boxplot
databp <- read.csv(file = "boxplot_data.csv", 
                   head = TRUE, sep = ",")

z=databp$x
boxplot(z, col="grey")
#?boxplot talk about ?