n <- readline(prompt = "how many people in the room: ")
n <- as.integer(n)
nm <- readline(prompt = "how many interation: ")
nm <- as.integer(nm)
#calculating the probabilities by formula
nn=n-1
p=1 #initialize
for (i in 1:nn){
p=p*(1-(i/365))  
}
pb=1-p
print(p)
print(pb)
#calculating probabilites for a bunch of n's
p1 <- numeric()
p2 <- numeric()
np <- integer()
p1[1]=1
p2[1]=0
np[1]=1
for (k in 2:366){
p1[k]=1
np[k]=k
kk=k-1
for (i in 1:kk){
p1[k]=p1[k]*(1-(i/365))  
}
p2[k]=1-p1[k]
}
databdp=data.frame(np,p1,p2) 
write.table(databdp, file = "databdp.csv", append = F, 
            quote = F, sep = ",",eol = "\n", na = "NA", 
            dec = ".", row.names = F,col.names = T)

plot(np,p1)
plot(np,p2)
#lets do the simulation
sum=0
for (i in 1:nm){
x=sample(1:365,n,replace=T)
x=sort(x)
l=length(x)
ll=l-1
for (k in 1:ll){
if (x[k]==x[k+1]){
match=1 
break
}else{
match=0  
}  
}
sum=sum+match
}
probmont=sum/nm
print(probmont)