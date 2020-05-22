datasl <- read.csv(file = "stem_leaf_data.csv", 
                   head = TRUE, sep = ",")
x <- datasl$x
stem(x,scale=1)
stem(x,scale=10)