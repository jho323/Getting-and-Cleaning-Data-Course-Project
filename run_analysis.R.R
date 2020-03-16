
library(tidyr)
library(dplyr)


"This first section of code reads the files from the test folder and then merges them into one test data frame
"
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


"Creating a test data frame with the different column names"

mytest_df <- data.frame(identifier= test_subject[[1]], activity=test_y[[1]], test_set = test_x[[1]],acc_x_test = acc_x_test[[1]],
                        acc_y_test=acc_y_test[[1]],acc_z_test=acc_z_test[[1]],gyro_x_test=gyro_x_test[[1]],gyro_y_test=gyro_y_test[[1]],
                        gyro_z_test=gyro_z_test[[1]],total_acc_x_test=total_acc_x_test[[1]],total_acc_y_test=total_acc_y_test[[1]],
                        total_acc_z_test=total_acc_z_test[[1]],stringsAsFactors = FALSE)
mytest_df <- tbl_df(mytest_df)


"This next section of code reads the files from the train folder and then merges them into one train data frame"

train_subject <- read.delim("UCI HAR Dataset/train/subject_train.txt")
train_x <- read.csv("UCI HAR Dataset/train/x_train.txt",sep = "",header = FALSE,nrows = 2946)
train_y <- read.delim("UCI HAR Dataset/train/y_train.txt")
acc_x_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt",sep = "",header = FALSE,nrows = 2946)
acc_y_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt",sep = "",header = FALSE,nrows = 2946)
acc_z_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt",sep = "",header = FALSE,nrows = 2946)
gyro_x_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt",sep = "",header = FALSE,nrows = 2946)
gyro_y_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt",sep = "",header = FALSE,nrows = 2946)
gyro_z_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_x_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_y_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt",sep = "",header = FALSE,nrows = 2946)
total_acc_z_train<- read.csv("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt",sep = "",header = FALSE,nrows = 2946)

"Creating a train data frame with the different column names"

mytrain_df <- data.frame(identifier= test_subject[[1]], activity=test_y[[1]], train_set = train_x[[1]],acc_x_train = acc_x_train[[1]],
                        acc_y_train=acc_y_train[[1]],acc_z_train=acc_z_train[[1]],gyro_x_train=gyro_x_train[[1]],gyro_y_train=gyro_y_train[[1]],
                        gyro_z_train=gyro_z_train[[1]],total_acc_x_train=total_acc_x_train[[1]],total_acc_y_train=total_acc_y_train[[1]],
                        total_acc_z_train=total_acc_z_train[[1]],stringsAsFactors = FALSE)
mytrain_df <- tbl_df(mytrain_df)



