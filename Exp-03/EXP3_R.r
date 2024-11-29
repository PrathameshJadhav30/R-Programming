#Q1. Program to display days of the week
days_of_week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (day in days_of_week) {
  print(day)
}

#Q2. Program to calculate Fibinocci series of given number.
num_terms <- 9 
fib <- numeric(num_terms)
fib[1] <- 0
if (num_terms > 1) {
  fib[2] <- 1
}
for (i in 3:num_terms) {
  fib[i] <- fib[i - 1] + fib[i - 2]
}
cat("Fibonacci series up to", num_terms, "terms:", fib, "\n")

#Q3. Program to calculate Factorial of given number.
num <- 7
factorial_result <- 1
for (i in 1:num) {
  factorial_result <- factorial_result * i
}
cat("Factorial of", num, "is:", factorial_result, "\n")
