integrand <- function(x){
y=x*exp(-4*x^2)  
return(y)  
}
#d=myintfunction(1)
#print(d)
dd=integrate(integrand,0,Inf)
print(dd)