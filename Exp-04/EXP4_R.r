#Q1. A function that returns both the mean and standard deviation of a vector.
mean_sd <- function(vec) {
  mean_val <- mean(vec)  
  sd_val <- sd(vec)      
  return(list(mean = mean_val, sd = sd_val)) 
}

vec <- c(2, 4, 6, 8, 10)
result <- mean_sd(vec)
print(result)

#Q2.A function with arguments and without arguments.

mean_sd <- function(vec = NULL) {
  if (is.null(vec)) {
    vec <- c(9, 7, 6, 4, 2)  
  }
  
  mean_val <- mean(vec) 
  sd_val <- sd(vec)     
  return(list(mean = mean_val, sd = sd_val))
  }

result1 <- mean_sd()
print(result1)

result2 <- mean_sd(c(10, 20, 30, 40, 50))
print(result2)

#Q3. Calculate reverse of given number using functions.

reverse_number <- function(num) {
  num_str <- as.character(num)
  
  reversed_str <- paste0(rev(strsplit(num_str, NULL)[[1]]), collapse = "")
  
  reversed_num <- as.numeric(reversed_str)
  
  return(reversed_num)
}

num <- 97649
result <- reverse_number(num)
print(result)

#Q4. Calculate Fibinocci Series using Recursion function in R

fibonacci <- function(n) {

  if (n == 0) {
    return(0)
  } else if (n == 1) {
    return(1)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}
fibonacci_series <- function(terms) {
  for (i in 0:(terms-1)) {
    cat(fibonacci(i), " ")
  }
  cat("\n")  
}

fibonacci_series(10)

#Q5. Calculate factorial of given number using recursion in R.

factorial_recursive <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}

num <- 5
result <- factorial_recursive(num)
print(result)
