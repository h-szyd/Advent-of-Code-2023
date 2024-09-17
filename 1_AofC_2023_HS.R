# Advent of Code 2023
# Hanna Szydlowski

# Day 1: Trebuchet?!

# Problem: Issue with global snow production
# GOal: Fix the problem by finding the calibration values


# Coding Goal: Find the first and last digit of each line, combine the two
# together to create a two-digit number, add the two-digit numbers together to
# get the final sum of all calibration numbers

# Step 1: Get data and get numbers only
# step 2: Get the first digit
# Step 3: Get the last digit
# Step 4: Combine the two into one number
# Step 5: Sum up all two-digit values

setwd("C:/Users/hszyd/Documents/GitHub/Advent-of-Code-2023")

# ---------------------------------------


# Step 1: Get data and get numbers only
# Sample code lines:
#1abc2 - 12
#pqr3stu8vwx -38
#a1b2c3d4e5f -12345
#treb7uchet - 7

# Actual lines of code
df <- read.csv("AoC_1_Data.txt", header = FALSE, col.names = c("Lines"))

# loop to get the numbers only in a separate column

for (j in 1:nrow(df)) {
  df$Digits[j] <- gsub("\\D", "", df[j,1])
}


# step 2: Get the first digit
# Step 3: Get the last digit
# Step 4: Combine the two into one number
# Going to attempt to do this with one if statement within a for loop

#if >2 numbers, take the first and last number
#if <2 numbers, duplicate the number
#if 2 numbers, make this the final number


# code works when not it a for loop - issue within the loop

for (i in 1:nrow(df)) {
  df$Number[i] <-
    if (nchar(df[i,2]) > 2){
      as.numeric(paste((substr(df[i,2], 1, 1)), (substr(df[i,2], nchar(df[i,2]), nchar(df[i,2]))), sep = ""))
      
    } else if (nchar(df[i,2]) < 2){
      as.numeric(df[i,2])*11
      
    } else {
      as.numeric(df[i,2])
    }
}


# Step 5: Sum up all two-digit values

answer <- sum(as.numeric(df$Number))




  
