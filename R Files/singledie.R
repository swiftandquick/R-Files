n <- readline(prompt = "how many interation: ")
n <- as.integer(n)
x <- integer()
x=sample(1:6,n,replace=T)
sum1=0
sum2=0
sum3=0
sum4=0
sum5=0
sum6=0
for (i in 1:n){
xx=x[i]  
if (xx==1){
sum1=sum1+1  
}else if (xx==2){
sum2=sum2+1  
}else if (xx==3){
sum3=sum3+1  
}else if (xx==4){
sum4=sum4+1  
}else if (xx==5){
sum5=sum5+1  
}else{
sum6=sum6+1  
}  
}
suma <- numeric()
nm <- integer()
suma[1]=sum1/n
nm[1]=1
suma[2]=sum2/n
nm[2]=2
suma[3]=sum3/n
nm[3]=3
suma[4]=sum4/n
nm[4]=4
suma[5]=sum5/n
nm[5]=5
suma[6]=sum6/n
nm[6]=6
die1 <- data.frame(nm,suma)
write.table(die1, file="data1.csv", append=FALSE,quote=FALSE,sep=",",eol="\n",na="NA",dec=".",row.names=FALSE)
#jpeg(filename="singledie.jpeg",width =480, height =480, units = "px", pointsize = 12)
barplot(suma,main="Single Die", xlab="x",ylab="f(x)",names.arg=c("1","2","3","4","5","6")) 
#dev.off()
#calculating the mean and variance of this distribution
#mean
smean=0
for (i in 1:6){
  smean=smean+nm[i]*suma[i]
}
print(smean)
#cumulative distribution
cdf <- numeric()
for (i in 1:6){
if (i==1){
cdf[i]=suma[i] 
}else{
cdf[i]=cdf[i-1]+suma[i]  
}
}
ss=cdf[1]
print(ss)
#first quartile 25th percentile
for (i in 1:6){
  xx=cdf[i]
if ((.10 < xx) & (xx < .40)){
  print(i)
  print(cdf[i])
  #break
}
}
#variance
svar=0
nmdm <- numeric()
nmdm <- (nm-smean)
print(nmdm)
for (i in 1:6){
svar=svar+((nmdm[i])^2)*suma[i]  
}
print(svar)
ss=(6^2-1)/12
print(ss)
#alternative
svar2=0
for (i in 1:6){
  svar2=svar2+((nm[i])^2)*suma[i]
}
ss2=svar2-(smean)^2
print(ss2)
