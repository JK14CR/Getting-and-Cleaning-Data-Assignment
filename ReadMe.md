## ReadMe - Project Getting and Cleaning Data

Project requirements: 
Data source [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 


This file is a description of operations on data included in run_analysis.R
The original data can be found under [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] 
Zipped folder has been downloaded from Coursera assignment webpage and unzipped outside of R environment, with files placed in R working directory. Downloading and unzipping to R working directory cannot be immediately reproduced under different operating systems and folder structure, so the corresponding R code has not been included. 

In first step, data from test files subject, y and X have been loaded to R with read.table function. Subjects' column and activity codes' column (coming from subject and y files) were merged using cbind function, with column names of "subjectID" and "activity" created for the merged set. The same operations were applied to train sets. 

Column names for numerical data (sets X test and train) have been loaded from "features.txt" file, in character format. Logical vector (columns\_selection) has been created with results of grepl function, indicating indices of features with "mean"" or "std" in the description. Features are used as names for both X sets (test and train). Then both X sets (test and train) and subject/activity sets (test and train) are merged, using rbind to keep original order, with result of merging X sets being filtered based on the logical vector for mean and standard deviation columns. 

With cbind on the resulting sets, complete_data set is created, which includes columns for subject identifiers, activity code (remaining as integer value from 1 to 6 at this point), and features with mean or standard deviation. This set can be now used as starting point for tidy data set requested in the assignment. 

Function ddply from package plyr is used to calculate average per subject and activity code on features and creates "almost" tidy data set, where small modifications on column names and activity codes are performed. Names for features are the same as in original data set, only without special characters. Low familiarity with the subject prevented the author of the submission from searching more meaningful column descriptions. Upper case letters have been left in the column names for better readability.  

To rename activity codes, data is loaded from "activity_labels.txt" file. This step can be easily done at the end, as the codes do not influence previous calculations and it can save time to replace only positions in 180 rows in comparison to more than 10'000 in the original files. 

As last step, tidy set is written to a text file. The file can be read in R using read.table function, with header=TRUE parameter. 

Multiple checks of the data using functions like head, tail, dim, etc. have been omitted. 











