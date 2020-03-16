library(tidyr)
library(dplyr)



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


print(mytrain_df)