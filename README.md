# Getting and Cleaning Data/Course Project

This repository contains the following files required for the course project:

- CodeBook.md
- README.md (this file)
- run_analysis.R
- tidyData.txt

Each of the other files are described in the remainder of this README.md file.  Additionally, this README.md file will serve as the "explicit and exact recipe" that will describe how I got from the raw data to the tidy set.

## CodeBook.md

The file named CodeBook.md provides a description of the variables and observations that are found in the tidyData.txt file, as well as a full list of the column variables for reference. 

## tidyData.txt

This is the output file for the run_analysis.R script.  This file holds the tidy data set that was required for this assignment.

## run_analysis.R

Following are details on how the run_analysis.R script works.  The script file also includes comments within it, explaining each step.

1. The script first downloads the source data file if it's not already available in the working directory.  This source file is located here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Once the source data is downloaded and unzipped, the first step is to merge the training and the test sets to create one data set.  The script reads in the following data tables:
- UCI HAR Dataset/features.txt
- UCI HAR Dataset/train/subject_train.txt   
- UCI HAR Dataset/train/y_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt

Note: The Intertial Signal files were deliberately excluded since they are subsequently removed from the data table per assignment requirements.

3. Next step is to use the cbind function to create two new data sets, one for training data and one for testing data.

4. The training data and testing data are then appended to each other to create one final consolidated data frame.

5. Next part of the assignemtn is to extract only the measurements on the mean and standard deviation for each measurement.  This is done by reading in the features.txt file which holds the column names for the entire dataset.  I applied a regular expression to search for "mean()" and "std()" to identify the relevant columns.  I created a list of all these columns and stored them in a vector.

6. Next I added the subject and activity columns to my column list vector, since those were required for the final data frame.  Then I subsetted the consolidated dataset on the full list of columns that I wanted to keep.

7. Next step is to assign the descriptive activity names to the activities in the data set.  Until now, these activities are stored as integer values.  I pulled the descriptive names for these activities from the activity_labels.txt file and stored them in a vector.

8. To apply the descriptive names, I then changed the activities column to a factor and added the labels from the activities vector.


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






