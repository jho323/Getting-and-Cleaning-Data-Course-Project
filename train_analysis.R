library(tidyr)
library(dplyr)


train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("UCI HAR Dataset/train/x_train.txt",sep = "",header = FALSE)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")


colnames(train_x) <- features[[2]]
train_x$identifier <- train_subject[[1]]
train_x$activity <- train_y[[1]]



print(dim(train_x))
