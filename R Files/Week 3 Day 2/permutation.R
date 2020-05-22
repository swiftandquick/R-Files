# Type "install.packages("gtools")" in command console.  

library(gtools) # Use the library called gtools.  
tt = permutations(10, 2, repeats.allowed = F) # Determines whether repetition is allowed or, which in this case, no.  
print(tt)
write.table(tt, file = "permutation.csv", append = F, quote = F, 
            row.names = F, col.names = F)
# Creates a csv file called "permutative.csv", and save it in "Documents".  

pp = factorial(7) / (factorial(7 - 3))
print(pp)
pp2=exp(lfactorial(7))/(exp(lfactorial(7-3)))
print(pp2)

# Get n permutation of r.  
myperm <- funcction(n, r) {
  p = 1 # Initialize p.  
  rr = n - r + 1
  for (i in rr:n) {
    p = p * i
  }
  return(p)
}
pp = myperm(1000,50)

# Get n combination of r.  
mycomb <- funcction(n, r) {
  p = 1 # Initialize p.  
  rr = n - r + 1
  for (i in rr:n) {
    p = p * i
  }
  rr = 1
  for (i in 1:r) {
    rr = rr * i
  }
  p = p / rr
  return(p)
}