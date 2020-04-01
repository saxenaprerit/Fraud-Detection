# Fraud Detection

rm(list=ls(all=TRUE))

setwd("C:/Users/Prerit/Desktop/Datatest/Fraud Detection")

# Reading in data

train_sample <- read.csv("train_sample.csv", header = TRUE)
str(train_sample)

table(train_sample$is_attributed)

library(data.table)

train <- fread("train.csv", sep = ',', header = TRUE)

train <- read.csv("train.csv", header = TRUE)
str(train)

table(train$is_attributed)

test <- read.csv("test.csv", header = TRUE)
str(test)
test2 <- test
test2$is_attributed <- 0
test2 <- test2[c(1,8)]

write.csv(test2, "submission_1.csv", row.names = FALSE)
