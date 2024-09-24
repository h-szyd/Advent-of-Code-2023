# Advent of Code 2023
# Hanna Szydlowski

# Day 2: Cube Conundrum

# Problem: Elf game
# Goal: 

# The Elf would first like to know which games would have been possible if the bag
# contained only 12 red cubes, 13 green cubes, and 14 blue cubes?

# In the example above, games 1, 2, and 5 would have been possible if the bag had
# been loaded with that configuration. However, game 3 would have been impossible
# because at one point the Elf showed you 20 red cubes at once; similarly, game 4
# would also have been impossible because the Elf showed you 15 blue cubes at once.

# If you add up the IDs of the games that would have been possible, you get 8.
# Determine which games would have been possible if the bag had been loaded with
# only 12 red cubes, 13 green cubes, and 14 blue cubes. What is the sum of the IDs
# of those games?


# Coding Goal: Find the first and last digit of each line, combine the two
# together to create a two-digit number, add the two-digit numbers together to
# get the final sum of all calibration numbers

# Step 1: convert the code to separate strings for each game
# Step 2: Rule out which ones have >12 red cubes
# Step 3: Repeat the above for >13 green and >14 blue

setwd("C:/Users/hszyd/Documents/GitHub/Advent-of-Code-2023")

# ---------------------------------------

library(stringr)
library(tidyr)
library(naniar)


# Step 1: convert the code to separate strings for each game
# Actual lines of code
DataString <- readLines("2_AofC_SampleData.txt")

# replace ; and : with , so all separate factors are the same
DataString <- str_replace_all(DataString, ";", ",")
DataString <- str_replace_all(DataString, ":", ",")
DataString


# Divide this string into separate red, green, blue strings
# Red string - remove green and blue
DataString_Red <- gsub(" green", "", DataString)
DataString_Red <- gsub(" blue", "", DataString_Red)
DataString_Red

# put into a df to remove cells with only numbers - convert to NA
df_Red <- as.data.frame(DataString_Red)
df_Red <- separate(df_Red, col = DataString_Red, into = c('Games', '1', '2', '3', '4', '5',
                                              '6', '7', '8', '9'), sep = ",")

for (j in 1:nrow(df_Red)) {
  
}



# Blue string
DataString_Blue

# Green string
DataString_Green



# separate game and number
df <- separate(df, col = Games, into = c('Game', 'Number'), sep = " ")


