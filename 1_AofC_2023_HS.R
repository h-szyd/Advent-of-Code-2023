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
# Step 5: Create a loop to do this for each line and output the two-digit
# value somewhere
# Step 6: Sum up all two-digit values

setwd("C:/Users/hszyd/Documents/GitHub/Advent-of-Code-2023")

# ---------------------------------------


# Step 1: Get data and get numbers only
# Sample code lines:
#1abc2 - 12
#pqr3stu8vwx -38
#a1b2c3d4e5f -12345
#treb7uchet - 7

df <- read.csv("SampleData.csv")

# loop to get the numbers only in a separate column
j <- j+1
for (j in 0:4) {
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
i <- i+1
for (i in 0:4) {
  df$Number[i] <-
    if (nchar(df[i,2]) > 2){
      print("big")
      
    } else if (nchar(df[i,2]) < 2){
      print("small")
      
    } else {
      print("equal to")
    }
}




# this works for a single cell, but breaks in a for loop
i <- 1
df$Number[i] <-
  if (nchar(df[i,2]) > 2){
    print("big")
      
  } else if (nchar(df[i,2]) < 2){
    print("small")
      
  } else {
    print("equal to")
  }
