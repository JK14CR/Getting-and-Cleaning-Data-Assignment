## Codebook - Project Getting and Cleaning Data

This codebook describes variable used in the analysis and transformations performed on them. 
Source of data can be found under [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
Original data is included in several files, collecting information on movements of 30 volunteers wearing smartphones, while they go on with their daily activities. The following files from the data set were used for the project: 
* activity_labels.txt
* features.txt
* subject_test.txt
* subject_train.txt
* X_test.txt
* X_train.txt
* y_test.txt
* y_train.txt

*Description of the source data is short and superficial because of limited knowledge on measurement of movement mechanics demonstrated by the author of this project submission*

Each record in source data includes (as described in README.TXT): 
* Triaxial (identified by X,Y,Z) acceleration from the accelerometer and the estimated body acceleration
* Triaxial Angular velocity from the gyroscope
* 561-feature vector with time and frequency domain variables
* Activity label
* Subject ID 
Features had been normalised and bounded within [-1,1]. 

As defined in project objectives, the tidy data set resulting from the analysis includes only subject ID, activity code and features with mean or standard deviation (filtered based on description) with mean calculated for each feature, separately for each subject and its activities. 

There are 68 columns and 180 rows in the file, features related to similar signal have been grouped together, all measurements after subjectID and activity are numeric. 

List of codes: 
- subjectID: identifier of the subject, numbered 1 - 30 
- activity: 6 types (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)
- tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ: mean of mean body acceleration in 3 dimensions (t - time component, f - frequency component)
- tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ: mean of standard deviation of body acceleration in 3 dimensions (t - time component, f - frequency component)
- tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ: mean of mean gravity acceleration in 3D (time comp.)
- tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ: mean of standard deviation of gravity acceleration in 3D (time comp.)
- tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ: mean of mean body acceleration jerk in 3D (t - time component, f - frequency component)
- tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ: mean of st.dev. of body acceleration jerk in 3D (t - time component, f - frequency component)
- tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ: mean of mean body angular velocity in 3D (t - time component, f - frequency component)
- tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ: mean of st.dev. of body angular velocity in 3D (t - time component, f - frequency component)
- tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ: mean of mean angular velocity jerk in 3D (t - time component)
- tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ: mean of st.dev. of angular velocity jerk in 3D (t - time component)
- tBodyAccMagMean, fBodyAccMagMean: mean of mean magnitude of body acceleration (t - time component, f - frequency component)
- tBodyAccMagStd, fBodyAccMagStd: mean of st.dev. of magnitude of body acceleration (t - time component, f - frequency component)
- tGravityAccMagMean - mean of mean magnitude of gravity acceleration (time comp.)
- tGravityAccMagStd - mean of st.dev. of magnitude of gravity acceleration (time comp.)
- tBodyAccJerkMagMean, fBodyBodyAccJerkMagMean: mean of mean magnitude of body acceleration jerk (t - time component, f - frequency component)
- tBodyAccJerkMagStd, fBodyBodyAccJerkMagStd: mean of st.dev. of magnitude of body acceleration jerk (t - time component, f - frequency component)
- tBodyGyroMagMean, fBodyBodyGyroMagMean: mean of mean magnitude of angular velocity (t - time component, f - frequency component)
- tBodyGyroMagStd, fBodyBodyGyroMagStd: mean of st.dev. of magnitude of angular velocity (t - time component, f - frequency component)
- tBodyGyroJerkMagMean, fBodyBodyGyroJerkMagMean: mean of mean magnitude of angular velocity jerk (t - time component, f - frequency component)
- tBodyGyroJerkMagStd, fBodyBodyGyroJerkMagStd: mean of st.dev. of magnitude of angular velocity jerk (t - time component, f - frequency component)

















