# What is the chance of at least two people in the class have the same birthday?  

students <- readline(prompt = "How many people in the room:  ")  # Works like a scanner in Java.  
students <- as.integer(students) # Input is an integer.  

iterations <- readline (prompt = "How many iterations:  ") # How many times do I run the simulation?  
iterations <- as.integer(iterations) # Input is an integer.  

prob = 1 # initialize

MaxIndex = students - 1 # Set the maximum index as maximum students - 1.  

# Set the index 1 to MaxIndex 
for(index in 1:MaxIndex) {
  prob = prob * (1 - (index/365))
}

# Gets the probability.  
probB = 1 - prob

print(prob) # Prints out the probability of its compliment counterpart.  
print(probB) # Prints out the probability.  




# Now, we are doing a simulation based on probability.  

p1 <- numeric()
p2 <- numeric()
np <- integer()

p1[1]=1
p2[1]=0
np[1]=1

# Set index from 2 to 366.  
for (k in 2:366) {
  p1[k] = 1
  np[k] = k
  kk = k - 1
  for(i in 1:kk) {
    p1[k] = p1[k] * (1 - (i / 365))
  }
  p2[k] = 1 - p1[k]
}




n <- readline(prompt="how many people in the room: ") #reads in prompt for n
n <- as.integer(n) #makes n as a integer alongside a prompt
nm <- readline(prompt="how many iterations:") #reads in prompt for nm
nm <- as.integer(nm) #makes nm as a integer alongside a prompt

databdp = data.frame(np, p1, p2)
write.table(databdp, file = "data", append = FALSE, row.names = FALSE, col.names = TRUE)
plot(np, p1)
plot(np, p2)
sum = 0
for (i in 1:students) {
  x = sample(1:365, n, replace = T)
  x = sort(x)
  l = length(x)
  ll = l - 1
  for (k in 1:ll) {
    if (x[k] == x[k + 1]) {
      match = 1
      break # When the match is found, breaks out of the loop, we only need 1 match.  
    }
    else {
      match = 0 # This is not necessary, but it means match is 0 when the conditional statement false.  
    }
  }
  sum = sum + match
}

probmont = sum / students
print(probmont)