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

Following are details on how the run_analysis.R script works.  The script file also includes comments within it, explaining each step in detail.

### Getting the data
- The script first downloads the source data file if it's not already available in the working directory.  This source file is located here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- Once the source data is downloaded and unzipped, the first step is to merge the training and the test sets to create one data set.  The script reads in the following data tables:
-- UCI HAR Dataset/features.txt
-- UCI HAR Dataset/train/subject_train.txt   
-- UCI HAR Dataset/train/y_train.txt
-- UCI HAR Dataset/train/X_train.txt
-- UCI HAR Dataset/test/subject_test.txt
-- UCI HAR Dataset/test/X_test.txt
-- UCI HAR Dataset/test/y_test.txt

Note: The Intertial Signal files were deliberately excluded since they are subsequently removed from the data table per assignment requirements.

### Assignment Step 1: Merge the training and the test sets to create one data set

- Next step is to use the cbind function to create two new data sets, one for training data and one for testing data.

- The training data and testing data are then appended to each other to create one final consolidated data frame.

### Assignment Step 2: Extract only the measurements on the mean and standard deviation for each measurement

- This is done by reading in the features.txt file which holds the column names for the entire dataset.  I applied a regular expression to search for "mean()" and "std()" to identify the relevant columns.  I created a list of all these columns and stored them in a vector.

- Next I added the subject and activity columns to my column list vector, since those were required for the final data frame.  Then I subsetted the consolidated dataset on the full list of columns that I wanted to keep.

### Assignment Step 3: Use descriptive activity names to name the activities in the data set

- Next step is to assign the descriptive activity names to the activities in the data set.  Until now, these activities are stored as integer values.  I pulled the descriptive names for these activities from the activity_labels.txt file and stored them in a vector.

- To apply the descriptive names, I then changed the activities column to a factor and added the labels from the activities vector.


### Assignment Step 4: Appropriately label the data set with descriptive variable names. 
    
- Next I created a vector for the column names.  We know the first two columns are "subject" and "activity" so those are included, and then I appended the other column names from the list created in the earlier section

- Parentheses were removed for easier reference and I forced camel case for easier human reading.  Also used grep to remove extra white space and hypens.

- Finally the column names vector was applied to the data set.
    

### Assignment Step 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
    
- First write code to group by subject and activity and takes a mean of all other columns.

- Then update the column names to reflect these new variables - the mean of each column.

### Last Step: write out the new dataset to a TXT file

- This is done with a write.table comment that outputs the file without row names, as required by the assignment
    




