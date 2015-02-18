
run_analysis <- function() {
    
    # check to see if the file exists, if not download and unzip
    if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
        
        # If not, download and unzip the file
        
        ### UPDATE FILENAME        
        filename<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(filename,destfile="getdata-projectfiles-UCI HAR Dataset.zip",method="curl")
        unzip("getdata-projectfiles-UCI HAR Dataset.zip")
        
    }
    
    ################################################
    # 1. Merge the training and the test sets to create one data set:
    
    # features list - holds the column names for both test and train
    features <- read.table("UCI HAR Dataset/features.txt")
    
    # TRAINING DATA
    
    # subject_test - vector of the subjects for each row 
    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    
    # y_test - the test labels, like 1, 2, 3 for walk, walking upstairs, etc
    y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
    
    # X_test - the test set
    X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
    
    # TESTING DATA   
    
    # subject_test - vector of the subjects for each row    
    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    
    # X_test - the test set
    X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
    
    # y_test - the test labels, like 1, 2, 3 for walk, walking upstairs, etc
    y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
    
    # Inertial Signals were deliberately excluded since they are not needed
    # for the final dataset and would be removed anyway
    
    # Create consolidated training table
    trainTable <- cbind(subject_train,y_train,X_train)
    
    # Create consolidated testing table
    testTable <- cbind(subject_test,y_test,X_test)
    
    # Append the training to the test for final new table
    combinedTable <- rbind(trainTable,testTable)
    
    ################################################
    # 2. Extracts only the measurements on the mean and standard deviation 
    # for each measurement. 
    
    # Read in the features.txt to get the column names 
    features <- read.table("UCI HAR Dataset/features.txt")
    
    # Find all columns with mean() in them
    # Mean frequency is deliberately excluded
    meanList <- features[grep("mean\\(\\)", features$V2), ]
    
    # find all columns with std() in them
    stdList <- features[grep("std\\(\\)", features$V2), ]
    
    # combine this into one list
    fullList <- rbind(meanList, stdList)
    
    # create a vector of the first two columns plus the ones above
    colsToKeep <- c(1,2,(fullList[,1]+2))
    
    # create a new table with only these data points
    newTable <- combinedTable[,colsToKeep]
    
    ################################################
    # 3. Uses descriptive activity names to name the activities in the data set
    
    # read in the activity labels column
    activities <- read.table("UCI HAR Dataset/activity_labels.txt")
    
    # activites are in the second column of this table - V1.1
    # change the column to a factor and add labels from the activities vector
    newTable$V1.1 <- factor(newTable$V1.1, labels=activities[,2])
    
    ################################################
    # 4. Appropriately label the data set with descriptive variable names. 
    
    # create a vector for the column names, we know the first two columns are
    # "Subject Number" and "Activity" -- then append the column names
    # from the list created in the earlier section
    colNameList <- c("subject","activity",as.character(fullList$V2))
    
    # Remove parentheses for easier reference and force camel case for reading
    colNameList <- gsub("mean()", "Mean", colNameList, fixed = TRUE)
    colNameList <- gsub("std()", "Std", colNameList, fixed = TRUE)
    
    # Remove whitespaces for easier reference
    colNameList <- gsub(" ", "", colNameList, fixed = TRUE)
    
    # Remove hypens for easier reference
    colNameList <- gsub("-", "", colNameList, fixed = TRUE)
    
    # assign it to columns names
    colnames(newTable) <- colNameList
    
    ################################################
    # 5. From the data set in step 4, creates a second, independent tidy data set 
    # with the average of each variable for each activity and each subject.
    
    # This code groups by subject and activity and takes a mean of all other columns
    meanTable <- aggregate(newTable[,3:ncol(newTable)], by =list(newTable[,1], newTable[,2]), FUN = mean, na.rm = TRUE)
    
    # This code updates the colnames to reflect this new data - pasting "subjectMean:" in front of old varialbe names
    newColNames <- c("subject","activity",paste("subjectMean:",names(meanTable[,3:length(meanTable)])))
    names(meanTable) <- newColNames
    
    ################################################
    # Last step is to write out the new dataset to a TXT file
    
    write.table(meanTable,file="tidyData.txt",row.names=FALSE)
    
    
}

