
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










