# run_analysis.R

# Initialize fileUrl
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download the file into temp zip file
temp <- tempfile(fileext=".zip")
download.file(fileUrl, temp)

# Unzip the file then delete the temp file
unzip(temp, exdir=".", overwrite=TRUE)
unlink(temp)

# Load the data.table library
library(data.table)

# Clean the merge directory
if (!file.exists("./UCI HAR Dataset/merge")) {
        dir.create("./UCI HAR Dataset/merge")
        dir.create("./UCI HAR Dataset/merge/Inertial Signals")
        file.remove("./UCI HAR Dataset/ActivityMeanStd.txt")
        file.remove("./UCI HAR Dataset/TidyDataset.txt")
} else {
        unlink("./UCI HAR Dataset/merge", recursive=TRUE, force=TRUE)
        dir.create("./UCI HAR Dataset/merge")
        dir.create("./UCI HAR Dataset/merge/Inertial Signals")
        file.remove("./UCI HAR Dataset/ActivityMeanStd.txt")
        file.remove("./UCI HAR Dataset/TidyDataset.txt")
}

# Merge the subject files
fileTest <- "./UCI HAR Dataset/test/subject_test.txt"
fileTrain <- "./UCI HAR Dataset/train/subject_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/subject.txt"
dtTest <- fread(fileTest)
dtTrain <- fread(fileTrain)
dtMerge <- rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE)

# Merge the x files
fileTest <- "./UCI HAR Dataset/test/X_test.txt"
fileTrain <- "./UCI HAR Dataset/train/X_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/X.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the y files
fileTest <- "./UCI HAR Dataset/test/y_test.txt"
fileTrain <- "./UCI HAR Dataset/train/y_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/y.txt"
dtTest <- fread(fileTest)
dtTrain <- fread(fileTrain)
dtMerge <- rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE)

# Merge the Inertia Signals files for body_acc_x
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_acc_x.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_acc_y
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_acc_y.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_acc_z
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_acc_z.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_gyro_x
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_gyro_x.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_gyro_y
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_gyro_y.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_gyro_z
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/body_gyro_z.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for total_acc_x
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/total_acc_x.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_acc_y
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/total_acc_y.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Merge the Inertia Signals files for body_acc_z
fileTest <- "./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"
fileTrain <- "./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"
fileMerge <- "./UCI HAR Dataset/merge/Inertial Signals/total_acc_z.txt"
dtTest <- read.table(fileTest, colClasses="character")
dtTrain <- read.table(fileTrain, colClasses="character")
dtMerge <-rbind(dtTrain, dtTest)
write.table(dtMerge, fileMerge, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Identify the mean and std feature columns in X data
t1 <- 1:6
t2 <- 41:46
t3 <- 81:86
t4 <- 121:126
t5 <- 161:166
t6 <- 201:202
t7 <- 214:215
t8 <- 227:228
t9 <- 240:241
t10 <- 253:254
f1 <- 266:271
f2 <- 345:350
f3 <- 424:429
f4 <- 503:504
f5 <- 516:517
f6 <- 529:530
f7 <- 542:543

reqdCol <- c(t1, t2, t3, t4, t5, t6, t7, t7, t8, t9, t10, f1, f2, f3, f4, f5, f6, f7)

# Extract mean and std for each measurement from merged set (X) 
fileMerge <- "./UCI HAR Dataset/merge/X.txt"
dtMerge <- read.table(fileMerge, colClasses="character")
extractMeanStd <- dtMerge[, reqdCol]

# Label the activites set (y)
fileLabel <- "./UCI HAR Dataset/activity_labels.txt"
dtALabel <- read.table(fileLabel)
labels <- dtALabel[, 2]

fileMerge <- "./UCI HAR Dataset/merge/y.txt"
dtActivitySet <- read.table(fileMerge, colClasses="character")
for (i in 1:nrow(dtActivitySet)) {
        j <- as.numeric(dtActivitySet[i, 1])
        dtActivitySet[i, 1] <- as.character(labels[j])
}

# label the dataset with activity names and write to file
data <- cbind(dtActivitySet, extractMeanStd)
file <- "./UCI HAR Dataset/ActivityMeanStd.txt"
write.table(data, file, row.names=FALSE, col.names=FALSE, quote=FALSE)

# Create a second data set with averages of the activities by subject
fileMerge <- "./UCI HAR Dataset/merge/X.txt"
dtMerge <- read.table(fileMerge)
extractMeanStd <- dtMerge[, reqdCol]

fileMerge <- "./UCI HAR Dataset/merge/subject.txt"
dtSubject <- read.table(fileMerge)

colnames(dtSubject) <- "subject"
colnames(dtActivitySet) <- "activity"

dtSubjectActivity <- cbind(dtSubject, dtActivitySet)
data <- cbind(dtSubjectActivity, extractMeanStd)

dataMean <- NULL
for ( i in sort(unique(dtSubject[, 1]))) {
       
        # Give me all rows with subject i
        dataBySubject <- data[data$subject == i, ]
        
        for ( j in unique(dtActivitySet[, 1])) {
                
                # Activity data j 
                dataBySubAct <- dataBySubject[dataBySubject$activity == j, ]
                if ( is.null(dataMean) ) {
                        cols <- ncol(dataBySubAct)
                        means <- t(colMeans(dataBySubAct[, 3:cols]))
                        dataMean <- data.frame(subject=i, activity=j, means)
                } else {
                        cols <- ncol(dataBySubAct)
                        means <- t(colMeans(dataBySubAct[, 3:cols]))
                        temp <- data.frame(subject=i, activity=j, means) 
                        dataMean <- rbind(dataMean, temp)
                }
        }
}

# Write the second dataset
file <- "./UCI HAR Dataset/TidyDataset.txt"
write.table(dataMean, file, row.names=FALSE, , quote=FALSE)


