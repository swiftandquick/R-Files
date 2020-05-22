integrand <- function(x) {
 y = x * exp(-4 * x^2)
 return(y)
}

int = integrate(integrand, 0, Inf)
print(int)
print(1/8)