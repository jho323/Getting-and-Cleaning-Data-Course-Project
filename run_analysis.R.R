
library(tidyr)
library(dplyr)


"This first section of code reads the files from the test folder and then merges them into one test data frame
"
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("UCI HAR Dataset/test/x_test.txt",sep = "",header = FALSE,nrows = 2947)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")

features <- read.table("UCI HAR Dataset/features.txt") 


"Creating a test data frame with the different column names"

"Appropriately labels the data set with descriptive variable names."
colnames(test_x) <- features[[2]]  
test_x$identifier <- test_subject[[1]]
test_x$activity <- test_y[[1]]


"This next section of code reads the files from the train folder and then merges them into one train data frame"

train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("UCI HAR Dataset/train/x_train.txt",sep = "",header = FALSE)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt") 


"Creating a train data frame with the different column names"

"Appropriately labels the data set with descriptive variable names."
colnames(train_x) <- features[[2]] 
train_x$identifier <- train_subject[[1]]
train_x$activity <- train_y[[1]]




"Merges the test and train data frame by the identifier and activity into one combined data frame"

merged_data <- rbind(test_x,train_x)


"Extracts only the measurements on the mean and standard deviation for each measurement"

names <- names(merged_data)

"looks for the columns with mean or std in the label"

selectedmeanFreq <- grep("meanFreq()",names)
selectedmean <- grep("mean()",names)
selectedstd <- grep("std()",names)

"indexes of columns with mean or std and removes indexes of meanFreq"
selected <- append(selectedmean,selectedstd) 
nomeanFreq <- which(!(selected%in%selectedmeanFreq))
selected <- selected[nomeanFreq]

myselecteddata <- merged_data[,(ncol(merged_data)-1):ncol(merged_data)]
myselecteddata <- cbind(myselecteddata,merged_data[selected])

"Uses descriptive activity names to name the activities in the data set"

replaced <- function(descriptor){ "function that replaces code with activity description"
  descriptions <- c("WALKING","WALKING UPSTAIRS","WALKING DOWNSTARIS","SITTING","STANDING","LAYING")
  return(descriptions[descriptor])
}

myselecteddata$activity <- sapply(myselecteddata$activity,replaced)

sorteddata <- arrange(myselecteddata,identifier,activity)

"Organizes the data so there is one mean for each observation. First groups the data by identifier and activity and then takes the mean of each column by group"

tidydata <- sorteddata %>% group_by(identifier,activity) %>%summarize_each(funs = mean) %>%
  print


if (!file.exists("./tidydata.txt")){
  
  write.table(tidydata,file = "./tidydata.txt",sep = "",quote = FALSE,row.names = FALSE)
}



