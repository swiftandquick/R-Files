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
