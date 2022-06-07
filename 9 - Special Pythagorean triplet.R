# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which  a^2 + b^2 = c^2.
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Here we use Euler formula for triplets:
# a = m^2 - n^2
# b = 2mn
# c = m^2 + n^2
# so we look for m^2 + mn == 500, where m > n > 0
# and m < sqrt(500) ~ 22

stop <- FALSE

for (m in 1:22) {
  for (n in 1:m) {
    if (2*m^2 + 2*m*n == 1000) {
      stop <- TRUE 
      break
    }
  }
  if (stop) break
}

a <- m^2 - n^2; b = 2*m*n; c = m^2 + n^2
a*b*c
