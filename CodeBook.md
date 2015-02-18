# Code Book for tidyData.txt

This document contains an explanation of the variable column names, as well as a full list of all the variables in the tidyData.txt file.  

## Explanations of variable column names

subject - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

activity - Each row identifies the activity that was performed.  Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Besides the subject and activity variables, the column names for all other variables have "subjectMean:" pre-pended in their name.  This indicates that the data in these columns  represent the by subject and activity for the given variable (a requirement of the assignment).

Bolded Examples: 
<br /><b>subjectMean:</b> fBodyAccJerkMean 
<br /><b>subjectMean:</b> tBodyGyroStdZ

After this prefix, the next part of the column name indicates the name of the signal that was used to estimte the variable for the original raw data set.  In other words, the type of measurement.  

Bolded Examples: 
<br />subjectMean:<b> fBodyAccJerk</b>StdX 
<br />subjectMean:<b> fBodyAccJerk</b>MeanY 

Next, you will see in the column name either the word "Mean" or "Std".  This indicates whether or not the column represents the mean or standard that was provided in the original raw data.  This assignment required that we only include mean and standard deviation data, so those are the only two possible values.

Bolded Examples: 
<br />subjectMean: fBodyAccJerk<b>Std</b>X 
<br />subjectMean: fBodyAccJerk<b>Mean</b>Y 

Finally, some of the variable colmumns will have a letter X, Y, or Z at the very end.  This indicate which of the 3-axial signals this variable represents.

Bolded Examples: 
<br />subjectMean: fBodyAccJerkStd<b>X </b>
<br />subjectMean: fBodyAccJerkMean<b>Y </b>

For more information on how the data within each variable was collected, please consult the README file of the original data set, available at this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Full list of variable columns and varible type/units

subject - int

activity - factor

subjectMean: tBodyAccMeanX - normalized number

subjectMean: tBodyAccMeanY - normalized number

subjectMean: tBodyAccMeanZ - normalized number

subjectMean: tGravityAccMeanX - normalized number

subjectMean: tGravityAccMeanY - normalized number

subjectMean: tGravityAccMeanZ - normalized number

subjectMean: tBodyAccJerkMeanX - normalized number

subjectMean: tBodyAccJerkMeanY - normalized number

subjectMean: tBodyAccJerkMeanZ - normalized number

subjectMean: tBodyGyroMeanX - normalized number

subjectMean: tBodyGyroMeanY - normalized number

subjectMean: tBodyGyroMeanZ - normalized number

subjectMean: tBodyGyroJerkMeanX - normalized number

subjectMean: tBodyGyroJerkMeanY - normalized number

subjectMean: tBodyGyroJerkMeanZ - normalized number

subjectMean: tBodyAccMagMean - normalized number       

subjectMean: tGravityAccMagMean - normalized number

subjectMean: tBodyAccJerkMagMean - normalized number

subjectMean: tBodyGyroMagMean - normalized number       

subjectMean: tBodyGyroJerkMagMean - normalized number

subjectMean: fBodyAccMeanX - normalized number

subjectMean: fBodyAccMeanY - normalized number           

subjectMean: fBodyAccMeanZ - normalized number

subjectMean: fBodyAccJerkMeanX - normalized number

subjectMean: fBodyAccJerkMeanY - normalized number      

subjectMean: fBodyAccJerkMeanZ - normalized number

subjectMean: fBodyGyroMeanX - normalized number

subjectMean: fBodyGyroMeanY - normalized number         

subjectMean: fBodyGyroMeanZ - normalized number

subjectMean: fBodyAccMagMean - normalized number

subjectMean: fBodyBodyAccJerkMagMean - normalized number 

subjectMean: fBodyBodyGyroMagMean - normalized number

subjectMean: fBodyBodyGyroJerkMagMean - normalized number

subjectMean: tBodyAccStdX - normalized number            

subjectMean: tBodyAccStdY - normalized number

subjectMean: tBodyAccStdZ - normalized number

subjectMean: tGravityAccStdX - normalized number        

subjectMean: tGravityAccStdY - normalized number

subjectMean: tGravityAccStdZ - normalized number

subjectMean: tBodyAccJerkStdX - normalized number       

subjectMean: tBodyAccJerkStdY - normalized number

subjectMean: tBodyAccJerkStdZ - normalized number

subjectMean: tBodyGyroStdX - normalized number           

subjectMean: tBodyGyroStdY - normalized number

subjectMean: tBodyGyroStdZ - normalized number

subjectMean: tBodyGyroJerkStdX - normalized number       

subjectMean: tBodyGyroJerkStdY - normalized number

subjectMean: tBodyGyroJerkStdZ - normalized number

subjectMean: tBodyAccMagStd - normalized number          

subjectMean: tGravityAccMagStd - normalized number

subjectMean: tBodyAccJerkMagStd - normalized number

subjectMean: tBodyGyroMagStd - normalized number        

subjectMean: tBodyGyroJerkMagStd - normalized number

subjectMean: fBodyAccStdX - normalized number

subjectMean: fBodyAccStdY - normalized number            

subjectMean: fBodyAccStdZ - normalized number

subjectMean: fBodyAccJerkStdX - normalized number

subjectMean: fBodyAccJerkStdY - normalized number        

subjectMean: fBodyAccJerkStdZ - normalized number

subjectMean: fBodyGyroStdX - normalized number

subjectMean: fBodyGyroStdY - normalized number           

subjectMean: fBodyGyroStdZ - normalized number

subjectMean: fBodyAccMagStd - normalized number

subjectMean: fBodyBodyAccJerkMagStd - normalized number  

subjectMean: fBodyBodyGyroMagStd - normalized number

subjectMean: fBodyBodyGyroJerkMagStd - normalized number



