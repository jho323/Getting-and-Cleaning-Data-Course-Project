library(tidyr)
library(dplyr)


test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("UCI HAR Dataset/test/x_test.txt",sep = "",header = FALSE,nrows = 2947)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")


colnames(test_x) <- features[[2]]
test_x$identifier <- test_subject[[1]]
test_x$activity <- test_y[[1]]



print(names(test_x))




