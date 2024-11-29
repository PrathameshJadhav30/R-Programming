#Q1.Create variables a and b with values of your choice (e.g., a = 15 and b =4)
a <- 9
b <- 7
print(a)
print(b)
#Q2.Calculate the following using these variables:
#Sum of a and b
#Difference between a and b
#Product of a and b
#Quotient of a divided by b
#Remainder when a is divided by b
#a raised to the power of b
#Print all the results with appropriate labels.
a <- 9
b <- 7
cat("Addition is:",a+b)
cat("Substraction is:",a-b)
cat("Product is:",a*b)
cat("Division is:",a/b)
cat("Modulus is:",a%%b)
cat("Power is:",a^b)

#Problem 2:
#Q1. Create a numeric variable num with a value (e.g., num = 123.456).
num <- 9.7
print(num)
#Q2. Convert num to an integer and a character. Store these conversions in new variables
#num_int and num_char, respectively

num <- 97.64
num_int <- as.integer(num)
num_char <- as.character(num)
cat("num as an integer:", num_int, "\n")
cat("num as a character:", num_char, "\n")

#Q3. Create a character variable char_val with a value (e.g., "789").
char_val <- "97"
print(char_val)

#Q4. Convert char_val to numeric and store it in a variable char_to_num.
char_val <- "123.456"
char_to_num <- as.numeric(char_val)
cat("char_val as numeric:", char_to_num, "\n")

#Q5. Print the original values and their converted counterparts.

num <- 79.46
char_val <- "76.94"

num_int <- as.integer(num)
num_char <- as.character(num)

char_to_num <- as.numeric(char_val)

cat("Original num value:", num, "\n")
cat("num as integer:", num_int, "\n")
cat("num as character:", num_char, "\n\n")

cat("Original char_val value:", char_val, "\n")
cat("char_val as numeric:", char_to_num, "\n")

#Problem 3 : Logical Operations And Conditions
#Q1. Create two variables x and y (e.g., x = 10 and y = 20).
x <- 9
y <- 7
print(x)
print(y)

#Q2. Check and print whether x is greater than y
x <- 9
y <- 7
if(x>y){
  print("X is greater")
}else{
  print("Y is greater")
}

#Q3. Check and print whether x is less than or equal to y.
x <- 7
y <- 9
if(x<=y){
  print("X is less than or equals to y")
}else{
  print("Y is greater than or equals to X")
}

#Q4. Create a logical variable is_even that is TRUE if x is even and FALSE otherwise.
x <- 6
is_even <- (x %% 2 == 0)
cat("Even Or Odd:", is_even, "\n")

#Q5. Print the value of is_even.
print(is_even)

#Problem 4 : 
#Q1. Create two numeric vectors vec1 and vec2 with arbitrary values (e.g., vec1 = c(1, 2, 3)
#and vec2 = c(4, 5, 6))
v1 <- c(1,2,3)
v2 <- c(4,5,6)
print(v1)
print(v2)

#Q2. Perform and print the following operations:
#Element-wise addition of vec1 and vec2
#Element-wise multiplication of vec1 and vec2
#Sum of all elements in vec1
#Mean of all elements in vec2
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

elementwise_addition <- vec1 + vec2
elementwise_multiplication <- vec1 * vec2
sum_vec1 <- sum(vec1)
mean_vec2 <- mean(vec2)
cat("Element-wise addition of vec1 and vec2:", elementwise_addition, "\n")
cat("Element-wise multiplication of vec1 and vec2:", elementwise_multiplication, "\n")
cat("Sum of all elements in vec1:", sum_vec1, "\n")
cat("Mean of all elements in vec2:", mean_vec2, "\n")

#Q3. Verify the types of vec1 and vec2.
typeof(v1)
typeof(v2)

#Problem 6 :
#Q1. Create a list named personal_info with the following elements:
#A numeric vector age with values 25, 30, 35
#A character vector names with values "Alice", "Bob", "Charlie"
#A logical vector is_member with values TRUE, FALSE, TRUE
age <- c(20, 22, 21)
names <- c("Sanika","Prathamesh","Aditi")
is_member <- c(TRUE, FALSE, TRUE)
personal_info <- list(age = age, names = names, is_member = is_member)

#Q2. Print the entire list.
print(personal_info)

#Q3. Extract and print:
#The names vector
#The second element of the age vector
#The first element of the is_member vector
names_vector <- personal_info$names
cat("Names vector:", names_vector, "\n")
second_age <- personal_info$age[2]
cat("Second element of the age vector:", second_age, "\n")
first_is_member <- personal_info$is_member[1]
cat("First element of the is_member vector:", first_is_member, "\n")