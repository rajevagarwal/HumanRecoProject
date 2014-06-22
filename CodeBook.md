Study Design (Reference: README.txt of the downloaded dataset)

The experiments have been carried out with a group of 30 volunteers within 
an age bracket of 19-48 years. Each person performed six activities (WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer 
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned 
into two sets, where 70% of the volunteers was selected for generating the training 
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time and frequency
domain. See 'features_info.txt' for more details. 

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each 
window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone 
accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The 
same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for 
the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by 
subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the 
gyroscope for each window sample. The units are radians/second. 

For more information about this dataset contact: activityrecognition@smartlab.ws


CodeBook (This homework assignment)

The following files were created during this assignment:

(1) run_analysis.R script - this script merges the train and test datasets into a single dataset
called merge. It also creates a dataset that contain the activities and mean and standrad deviation
features, and a tidy data file that contains the average of each activity for each subject. Details
about the run_analysis.R script are given in the README.md file.

(2) merge directory. This directory consists of each of the merged train and test files. Specifically,
it contains the following files:

- UCI HAR Dataset\merge directory - contains merged test and train files
- UCI HAR Dataset\merge\Inertial Signals - contains the merged data files
- UCI HAR Dataset\merge\Inertial Signals\body_acc_x.txt - contains the merged test and train body_acc_x file data
- UCI HAR Dataset\merge\Inertial Signals\body_acc_y.txt - contains the merged test and train body_acc_y file data
- UCI HAR Dataset\merge\Inertial Signals\body_acc_z.txt - contains the merged test and train body_acc_z file data
- UCI HAR Dataset\merge\Inertial Signals\body_gyro_x.txt - contains the merged test and train body_gyro_x file data
- UCI HAR Dataset\merge\Inertial Signals\body_gyro_y.txt - contains the merged test and train body_gyro_y file data
- UCI HAR Dataset\merge\Inertial Signals\body_gyro_z.txt - contains the merged test and train body_gyro_z file data
- UCI HAR Dataset\merge\Inertial Signals\total_acc_x.txt - contains the merged test and train total_acc_x file data
- UCI HAR Dataset\merge\Inertial Signals\total_acc_y.txt - contains the merged test and train total_acc_y file data
- UCI HAR Dataset\merge\Inertial Signals\total_acc_z.txt - contains the merged test and train total_acc_z file data

- UCI HAR Dataset\merge\subject.txt - contains the merged test and train subject file data
- UCI HAR Dataset\merge\X.txt - contains the merged test and train features file data
- UCI HAR Dataset\merge\y.txt - contains the merged test and train activities file data

(3) Results files. These are two files the run_analysis.R script produces. Specifically, the following files:

- UCI HAR Dataset\ActivityMeanStd.txt - this file contains the activity, mean, and standard deviation columns for features

The following is the list of columns in this file:

activity
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()

- UCI HAR Dataset\TidyDataset.txt - this file contains the activity, subject average mean, and average standard deviations for features

The following is the list of columns in this file:

subject
activity
average tBodyAcc-mean()-X
average tBodyAcc-mean()-Y
average tBodyAcc-mean()-Z
average tBodyAcc-std()-X
average tBodyAcc-std()-Y
average tBodyAcc-std()-Z
average tGravityAcc-mean()-X
average tGravityAcc-mean()-Y
average tGravityAcc-mean()-Z
average tGravityAcc-std()-X
average tGravityAcc-std()-Y
average tGravityAcc-std()-Z
average tBodyAccJerk-mean()-X
average tBodyAccJerk-mean()-Y
average tBodyAccJerk-mean()-Z
average tBodyAccJerk-std()-X
average tBodyAccJerk-std()-Y
average tBodyAccJerk-std()-Z
average tBodyGyro-mean()-X
average tBodyGyro-mean()-Y
average tBodyGyro-mean()-Z
average tBodyGyro-std()-X
average tBodyGyro-std()-Y
average tBodyGyro-std()-Z
average tBodyGyroJerk-mean()-X
average tBodyGyroJerk-mean()-Y
average tBodyGyroJerk-mean()-Z
average tBodyGyroJerk-std()-X
average tBodyGyroJerk-std()-Y
average tBodyGyroJerk-std()-Z
average tBodyAccMag-mean()
average tBodyAccMag-std()
average tGravityAccMag-mean()
average tGravityAccMag-std()
average tBodyAccJerkMag-mean()
average tBodyAccJerkMag-std()
average tBodyGyroMag-mean()
average tBodyGyroMag-std()
average tBodyGyroJerkMag-mean()
average tBodyGyroJerkMag-std()
average fBodyAcc-mean()-X
average fBodyAcc-mean()-Y
average fBodyAcc-mean()-Z
average fBodyAcc-std()-X
average fBodyAcc-std()-Y
average fBodyAcc-std()-Z
average fBodyAccJerk-mean()-X
average fBodyAccJerk-mean()-Y
average fBodyAccJerk-mean()-Z
average fBodyAccJerk-std()-X
average fBodyAccJerk-std()-Y
average fBodyAccJerk-std()-Z
average fBodyGyro-mean()-X
average fBodyGyro-mean()-Y
average fBodyGyro-mean()-Z
average fBodyGyro-std()-X
average fBodyGyro-std()-Y
average fBodyGyro-std()-Z
average fBodyAccMag-mean()
average fBodyAccMag-std()
average fBodyBodyAccJerkMag-mean()
average fBodyBodyAccJerkMag-std()
average fBodyBodyGyroMag-mean()
average fBodyBodyGyroMag-std()
average fBodyBodyGyroJerkMag-mean()
average fBodyBodyGyroJerkMag-std()








