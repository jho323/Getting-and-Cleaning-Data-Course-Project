
Identifier = the subject who performed the activity for each window sample. There are 30 sbujects that completed all 6 activities.

Activity= labels for activity completed by each subject

  1  WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING

How it was done:

1. Merges the training and the test sets to create one data set.
      - uses read.table to read in the data into text_x and train_x
      - cbind the subject ID's and activity labels into test_x and train_x
      -used rbind to merge test_x and train_x into merged_data
2. Extracts only the measurements on the mean and standard deviation for each measurement.
      - using grep to parse out columns with std() and mean() into selectedmean and selectedstd
      - identify columns with meanFreq() into selectedmeanFreq and removing them with nomeanFreq
      - creating a new data set, myselecteddata, with identifier and activity columns and columns with mean() or std()
3. Uses descriptive activity names to name the activities in the data set
      - creating a replace function and using sapply to replace the code with activity description
4. Appropriately labels the data set with descriptive variable names.
      - using features.txt and setting it to the columns titles using colnames() into sorteddata
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      - Grouping the data by identifier and activity and using summarize_each to take the mean of each column by group into tidydata

Variables:

test_subject: data of subject_test.txt
test_x: data of x_test.txt
test_y: data of y_test.txt
features: data of features.txt
train_subject: data of subject_train.txt
train_x: data of x_train.txt
train_y: data of y_train.txt
merged_data: merged data of x_test and x_train
names: columns names of merged_data
selectedmeanFreq: indexes of columsn with meanFreq()
selectedmean: indexes of columns with mean() and meanFreq()
selectedstd: indexes of columsn with std()
selected: indexes of columns with mean() and std()
nomeanFreq: indexes without meanFreq()
myselecteddata: data with just mean() and std() columsn along with identifier and activity columns
sorteddata: replace code with activity label
tidydata: organized data with single mean in each group for each observation

functions:

replaced: creates a vector with the activity labels and takes in the code number to index into the vector and the returns the activity label at that index.

Features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag



Mean and Std of selected features:               
 [3] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
 [7] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
 [9] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[11] "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[13] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[15] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[17] "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[19] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
[21] "tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"    
[23] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[25] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
[27] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[29] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[31] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
[33] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"    
[35] "fBodyBodyGyroJerkMag-mean()" "tBodyAcc-std()-X"           
[37] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[39] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[41] "tGravityAcc-std()-Z"         "tBodyAccJerk-std()-X"       
[43] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[45] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[47] "tBodyGyro-std()-Z"           "tBodyGyroJerk-std()-X"      
[49] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[51] "tBodyAccMag-std()"           "tGravityAccMag-std()"       
[53] "tBodyAccJerkMag-std()"       "tBodyGyroMag-std()"         
[55] "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"           
[57] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[59] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[61] "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"          
[63] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[65] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-std()"  
[67] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()" 








