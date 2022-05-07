# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

primes_sum <- 2
n <- 3

while (n < 2e6) {
  
  if (all(n %% 2:sqrt(n) != 0)) primes_sum <- primes_sum + n
  
  n <- n + 2
  
}
