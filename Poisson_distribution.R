# fun with the poisson distribution. 

# let's generate some random numbers that follow the poisson distribution. 
# we can use the rpois function. 

# The poisson distribution is given by lambda^n*exp(-n)/n! 
#   
# Let's take lambda = 8. 

# we will need the following function:

library(gg)

CountOccurrences <- function(x,i){
  return(sum(x==i))
}

lambda <- 8
N <- 100 # number of random, poisson-distributed, numbers

y <- rpois(N,lambda)
x <- seq(from = 0,to = max(y)+2)
z <- x * 0
z_actual <- z
for (i in 1:length((x))) {
  z[i] <- CountOccurrences(y,x[i])/N
  z_actual[i] <- lambda^x[i]*exp(-lambda)/factorial(x[i])
}

random.data <- data.frame(ind = x,dep = z, Color = "Random")
exact.data <- data.frame(ind = x,dep = z_actual, Color = "Exact")

graph.data <- rbind(random.data,exact.data)


# Basic scatter plot
ggplot( graph.data , aes(ind, dep)) + geom_point() +
  geom_point(color = Color)

ggplot(graph.data)+geom_point(aes(ind, dep,color= Color))

