test_subject <- read.delim("UCI HAR Dataset/test/subject_test.txt")
test_x <- read.csv("UCI HAR Dataset/test/x_test.txt",sep = "",header = FALSE,nrows = 2946)
test_y <- read.delim("UCI HAR Dataset/test/y_test.txt")
acc_x_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt",sep = "",header = FALSE,nrows = 2946)
acc_y_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt",sep = "",header = FALSE,nrows = 2946)
acc_z_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt",sep = "",header = FALSE,nrows = 2946)
gyro_x_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt",sep = "",header = FALSE,nrows = 2946)
gyro_y_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt",sep = "",header = FALSE,nrows = 2946)
gyro_z_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_x_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_y_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_z_test<- read.csv("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt",sep = "",header = FALSE,nrows = 2946)


library(tidyr)
library(dplyr)

mytest_df <- data.frame(identifier= test_subject[[1]], activity=test_y[[1]], test_set = test_x[[1]],acc_x_test = acc_x_test[[1]],
                        acc_y_test=acc_y_test[[1]],acc_z_test=acc_z_test[[1]],gyro_x_test=gyro_x_test[[1]],gyro_y_test=gyro_y_test[[1]],
                        gyro_z_test=gyro_z_test[[1]],total_acc_x_test=total_acc_x_test[[1]],total_acc_y_test=total_acc_y_test[[1]],
                        total_acc_z_test=total_acc_z_test[[1]],stringsAsFactors = FALSE)
mytest_df <- tbl_df(mytest_df)

print(mytest_df)