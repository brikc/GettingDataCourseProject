# Code Book for tidyData.txt

This document contains an explanation of the variable column names, as well as a full list of all the variables in the tidyData.txt file.  

## Explanations of variable column names

subject - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

activity - Each row identifies the activity that was performed.  Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Besides the subject and activity variables, the column names for all other variables have "subjectMean:" pre-pended in their name.  This indicates that the data in these columns  represent the by subject and activity for the given variable (a requirement of the assignment).

Bolded Examples: 
<b>subjectMean:</b> fBodyAccJerkMean 
<b>subjectMean:</b> tBodyGyroStdZ

After this prefix, the next part of the column name indicates the name of the signal that was used to estimte the variable for the original raw data set.  In other words, the type of measurement.  

Bolded Examples: 
subjectMean:<b> fBodyAccJerk</b>StdX 
subjectMean:<b> fBodyAccJerk</b>MeanY 

Next, you will see in the column name either the word "Mean" or "Std".  This indicates whether or not the column represents the mean or standard that was provided in the original raw data.  This assignment required that we only include mean and standard deviation data, so those are the only two possible values.

Bolded Examples: 
subjectMean: fBodyAccJerk<b>Std</b>X 
subjectMean: fBodyAccJerk<b>Mean</b>Y 

Finally, some of the variable colmumns will have a letter X, Y, or Z at the very end.  This indicate which of the 3-axial signals this variable represents.

Bolded Examples: 
subjectMean: fBodyAccJerkStd<b>X </b>
subjectMean: fBodyAccJerkMean<b>Y </b>

For more information on how the data within each variable was collected, please consult the README file of the original data set, available at this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Full list of variable columns

subject

activity

subjectMean: tBodyAccMeanX

subjectMean: tBodyAccMeanY

subjectMean: tBodyAccMeanZ

subjectMean: tGravityAccMeanX

subjectMean: tGravityAccMeanY

subjectMean: tGravityAccMeanZ

subjectMean: tBodyAccJerkMeanX

subjectMean: tBodyAccJerkMeanY

subjectMean: tBodyAccJerkMeanZ

subjectMean: tBodyGyroMeanX

subjectMean: tBodyGyroMeanY

subjectMean: tBodyGyroMeanZ

subjectMean: tBodyGyroJerkMeanX

subjectMean: tBodyGyroJerkMeanY

subjectMean: tBodyGyroJerkMeanZ

subjectMean: tBodyAccMagMean       

subjectMean: tGravityAccMagMean

subjectMean: tBodyAccJerkMagMean

subjectMean: tBodyGyroMagMean       

subjectMean: tBodyGyroJerkMagMean

subjectMean: fBodyAccMeanX

subjectMean: fBodyAccMeanY           

subjectMean: fBodyAccMeanZ

subjectMean: fBodyAccJerkMeanX

subjectMean: fBodyAccJerkMeanY      

subjectMean: fBodyAccJerkMeanZ

subjectMean: fBodyGyroMeanX

subjectMean: fBodyGyroMeanY         

subjectMean: fBodyGyroMeanZ

subjectMean: fBodyAccMagMean

subjectMean: fBodyBodyAccJerkMagMean 

subjectMean: fBodyBodyGyroMagMean

subjectMean: fBodyBodyGyroJerkMagMean

subjectMean: tBodyAccStdX            

subjectMean: tBodyAccStdY

subjectMean: tBodyAccStdZ

subjectMean: tGravityAccStdX         

subjectMean: tGravityAccStdY

subjectMean: tGravityAccStdZ

subjectMean: tBodyAccJerkStdX        

subjectMean: tBodyAccJerkStdY

subjectMean: tBodyAccJerkStdZ

subjectMean: tBodyGyroStdX           

subjectMean: tBodyGyroStdY

subjectMean: tBodyGyroStdZ

subjectMean: tBodyGyroJerkStdX       

subjectMean: tBodyGyroJerkStdY

subjectMean: tBodyGyroJerkStdZ

subjectMean: tBodyAccMagStd          

subjectMean: tGravityAccMagStd

subjectMean: tBodyAccJerkMagStd

subjectMean: tBodyGyroMagStd         

subjectMean: tBodyGyroJerkMagStd

subjectMean: fBodyAccStdX

subjectMean: fBodyAccStdY            

subjectMean: fBodyAccStdZ

subjectMean: fBodyAccJerkStdX

subjectMean: fBodyAccJerkStdY        

subjectMean: fBodyAccJerkStdZ

subjectMean: fBodyGyroStdX

subjectMean: fBodyGyroStdY           

subjectMean: fBodyGyroStdZ

subjectMean: fBodyAccMagStd

subjectMean: fBodyBodyAccJerkMagStd  

subjectMean: fBodyBodyGyroMagStd

subjectMean: fBodyBodyGyroJerkMagStd



