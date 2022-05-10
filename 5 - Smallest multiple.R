# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

n <- 2*5*7*11*13*17*19

while (!all(n %% 2:20 == 0)) {
  n <- n + 2*5*7*11*13*17*19

}

n