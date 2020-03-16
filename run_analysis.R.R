
library(tidyr)
library(dplyr)


"This first section of code reads the files from the test folder and then merges them into one test data frame
"
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("UCI HAR Dataset/test/x_test.txt",sep = "",header = FALSE,nrows = 2947)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")


"Creating a test data frame with the different column names"

colnames(test_x) <- features[[2]]
test_x$identifier <- test_subject[[1]]
test_x$activity <- test_y[[1]]


"This next section of code reads the files from the train folder and then merges them into one train data frame"

train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("UCI HAR Dataset/train/x_train.txt",sep = "",header = FALSE)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")


"Creating a train data frame with the different column names"

colnames(train_x) <- features[[2]]
train_x$identifier <- train_subject[[1]]
train_x$activity <- train_y[[1]]




"Merges the test and train data frame by the identifier and activity into one combined data frame"

merged_data <- rbind(test_x,train_x)


print(dim(merged_data))




