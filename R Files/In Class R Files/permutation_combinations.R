library(gtools)
options(expressions = 1e5)
tt=permutations(10,2,repeats.allowed=F)
write.table(tt, file = "permtationstable.csv", append = F, quote = F
            , sep = ",",eol = "\n", na = "NA", row.names = F,col.names = F)
#could simply use for 5P3
pp=factorial(7)/factorial(7-3)
print(pp)
cc=factorial(7)/(factorial(7-3)*factorial(3))
print(cc)
myperm <- function(n,r){
p=1 #initialize p
rr=n-r+1
for (i in rr:n){
p=p*i  
}  

return(p)    
}
pp=myperm(7,3)
print(pp)
mycomb <- function(n,r){
  p=1 #initialize p 
  #so do permuation first
  rp=n-r+1
  for (i in rp:n){
    p=p*i  
  } 
  #then create r! and divide the p above by
  #this number or divide by the reordering of
  #r things
  rr=1
  for (i in 1:r){
  rr=rr*i  
  }
  p=p/rr
  return(p)
}
cc=mycomb(7,3)
print(cc)
#binomial theorem
n <- readline(prompt = "The number of elements in the set is: ")
n <- as.integer(n)

#calculates binomial relationship
nn=n+1
i=0
sum1=0
while (i < nn) {
if (i==0){
  sum1=sum1+1
} else {
  sum1=sum1+mycomb(n,i)
} 
  i=i+1
}

res=2^n
print(res)
print(sum1)

