# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

find_prime_factors <- function(n){
  prime_factors <- c()
  
  while (n > 1) {
    
    k <- 2
    
    while (n %% k != 0) {
      k = k + 1
    }
    
    n = n / k
    prime_factors <- c(prime_factors, k)
    
  }
  
  return(max(prime_factors))
}

find_prime_factors(600851475143)
