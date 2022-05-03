# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

primes <- c(2)
n <- 3

while (length(primes) < 10001) {
 
  if (all(n %% 2:sqrt(n) != 0)) primes <- append(primes, n)
  
  n <- n + 1
  
}

primes[10001]
