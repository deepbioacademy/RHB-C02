# Conditions 
# if number > 0 (condition); positive (decision)
# if number < 0 (condition); negative (decision)

# if..else condition Syntax 
if (condition){
  # decision (if block)
} else {
  # decision (else block)
}

# Example 
num <- 10 
if (num > 0) {
  print("positive")
} else {
  print("negative")
}

i = 11 
if (i %% 2 == 0) {
  print("even")
} else {
  print("odd")
}

# if..else if...else condition Syntax 
if (condition1) {
  # do something 
} else if (condition2) {
  # do something 
} else if (condition3) {
  # do something 
} else if (condition4) {
  # do something   
} else {
  # do something 
}

num <- 0
if (num > 0) {
  print("positive")
} else if (num < 0){
  print("negative")
} else {
  print("zero")
}

# not community approach
num2 <- 5
if(num2 > 0) {print("positive")}


# Loop / iteration 
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")

# sequence 
# start = 1, end = 20; 1 to 20 
# colon operator (:)
1:5

# for loop syntax 
for (var in seq) {
  # do something (task)
}

for (i in 1:10){
  print("Bangladesh")
}

# print 1-10
for (i in 1:10) {
  print(i)
}

# print 10-1
for (i in 10:1) {
  print(i)
}

# print only even numbers 
for (i in 1:10) {
  # condition
  if (i %% 2 == 0){
    print(i)
  }
}

# print only odd numbers 
for (i in 1:10) {
  # condition
  if (i %% 2 != 0){
    print(i)
  }
}

# Vector creation 
# 1D dimensional data structure 
# collection ~ c() function 
num_vec <- c(12, 17, 22, 25)
class(num_vec)

char_vec <- c("female", "male", "female", "male")
class(char_vec)

# subset 
num_vec <- c(12, 17, 22, 25)
num_vec[3]

# range / seq 
num_vec[1:3]

# sequence / range (vector)
# start:end, gap/step: 1

seq <- 1:20
class(seq)

# seq() function 
# seq(start, end, step)
seq(1, 20, 3)

# factor (levels ~ group)
gender <- factor(c("female", "male", "female", "male"))


# matrix 
matrix(1:9)
matrix(1:9, nrow = 3)
matrix(1:9, nrow = 3, ncol = 3)
matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)

mat <- matrix(1:9, nrow = 3, ncol = 3)
dim(mat)

# data frame 
df <- data.frame(
  age = c(22, 34, 12, 18), 
  gender = c("F", "M")
)

# access column 
df$gender

# ifelse() function 
ages <- c(12, 20, 34, 22, 25, 26, 28, 14, 15)
ifelse(ages > 18, "adult", "child")