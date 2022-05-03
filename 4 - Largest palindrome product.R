# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

find_palindromes <- function(digits){
  
  palindromes <- c()
  start_value <- 10 ^ (digits - 1)
  end_value <- 10 ^ digits - 1
  
  for (i in start_value:end_value ) {
    
    for (j in i:end_value ) {
      
      product <- as.character(i*j)
      splitted_product <- unlist(strsplit(product, ''))
      
      if (all(splitted_product == rev(splitted_product))) {
        palindromes <- append(palindromes, as.numeric(product))
      }
      
    }
    
  }
  
  return(palindromes)
  
}

max(find_palindromes(3))
