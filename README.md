HumanRecoProject
================

Data Cleaning Project

### Stepwise description on how the run_analysis.R script works

This programming assignment consists of a R script, run_analysis.R, that does the following:

(1) Downloads, unzips, and loads the "Human Activity Recognition Using Smartphones Dataset" 
from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

(2) Unzips the downloaded file into the working directory. The dataset is described in the 
README.txt of the unzipped directory. Briefly, it consists of "train" and "test" directories
which consist of data files to be merged together. Each of these directories consisting of
a sub-directory named "Inertial Signals" containing raw data. The directories also consist 
of subject, X, and y files which are files of the subjects tested, features data, and the
activities the subjects were tested on. More specific details on the downloaded dataset 
please read its README.txt file.

(3) The first task of the assignment was to merge training and test datasets to create one
dataset. In this script the merged dataset will be generated under "merge" directory. The
merges file-by-file each group of files and places them into merge directory. 

For example, the script first merges the subject files from test and train directory into a
combined subject file. This involves reading "subject_test.txt" file into a "dtTest" dataset,
reading "subject_train.txt" file into a "dtTrain" dataset. It then merges these dataset into
a single dataset "subject.txt" using rbind(). Finally, the merged dataset is written to the
"subject.txt" file under the "merge" directory.

The script repeats this procedure for each of the files under the "test" and "train" dataset.
This results in the merged dataset.

(4) The second task was to extract only the measurements on the mean and standard deviation
for each measurement. This data is contained in the merged X data file. The scripts first
identifies the mean and standard deviations columns from the "features.txt" file. It then
reads these columns from the merged "X.txt" file into an "extractMeanStd" data.frame.

(5) The third task was to use descriptive activity names to name the activities in the data
set. The script reads this data from "activity_labels.txt" file into a data.frame. This data
set consists of a numeric value and descriptive name. The script reads the labels from the
second column into a "labels" factor class.

(6) The fourth task was to appropriately label the dataset with descriptive activity names. 
To achieve this the script reads the merged "y.txt" file as character into an "dtActiviySet"
data.frame, and replaces each of the numeric character with the corresponding character value 
in the labels (from step 5). Then it column binds the "dtActivitySet" and "extractMeanStd"
data.frames into a "data" frame. This is written to the "ActivityMeanStd.txt" file inside the
data directory.

(7) The fifth task was to create a second, independent tidy dataset with the average(mean)
of each variable for each activity and each subject. In this step the script read merged
"X.txt file into a "dtMerge" data.frame, and extracts the mean and standard deviations as
in step 3 (above). This results in the "extractMeanStd" data.frame. Then it reads merged
"subject.txt" into the "dtSubject" data.frame. It reuses the "dtActivitySet" from previous
step 6. It column binds the "dtSubject", "dtActivitySet", and "extractMeanStd" data.frames
called data. Then it loops through each "dtSubject" to first obtain the subset for each 
subject and then loops through each activity for that subject to obtain the average values
of each of the measumements. The result is written to a "TidyDataset.txt" file inside the
data directory.

