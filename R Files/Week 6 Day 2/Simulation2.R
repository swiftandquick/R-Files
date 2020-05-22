n <- readline(prompt="how many iterations: ")
n <- as.integer(n)
x <- integer()
x <- integer()
x =sample(1:6,n,replace=T)
sum1=0
sum2=0
sum3=0
sum4=0
sum5=0
sum6=0
for (i in 1:n){
  xx=x[i]
  if (xx==1) {
    sum1=sum1+1 
  } else if (xx==2){
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
#write.table(die1,file="datadie1.csv",append=F,row.names=F,column.names=F)
barplot(suma,main="single Die",xlab="x",ylab="f(x)",
        names.arg=c("1","2","3","4","5","6"))
