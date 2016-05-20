# setwd("~/Documents/Coursera/Getting_and_cleaning_data/project")
library(dplyr)

#***************************************************************#
# 1 Merge the training and the test sets to create one data set #
#***************************************************************#

#load test data
testX <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt")

#load train data
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")

#add "activity" and "subject number" to main data in test and train
testData <- mutate(testX, subject_number = testSubject[[1]], activity = testActivities[[1]])
trainData <- mutate(trainX, subject_number = trainSubject[[1]], activity = trainActivities[[1]])

#merge the test and train data together
mergedData <- rbind(trainData, testData)

#********************************************************************#
# 4 Appropriately label the data set with descriptive variable names #
#********************************************************************#

#load feature names
featureNames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
#assign feature names to column names in merged data
colnames(mergedData) = c(featureNames$V2, "subject_number", "activity")

#****************************************************************#
# 2 Extract the mean and standard deviation for each measurement #
#****************************************************************#

#get indices of colums that have mean and std values
indices <- grep("std\\(\\)|mean\\(\\)", names(mergedData))
#get a subset of the data
onlyStdAndMean <- mergedData[, c(indices, 562, 563)] #need the last two columns too...

#*************************************************************************#
# 3 Use descriptive activity names to name the activities in the data set #
#*************************************************************************#

#load activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
activityLabels$V2 <- tolower(activityLabels$V2) #change to lower case
#replace numbers in activity column with appropriate character vectors (descriptions)
onlyStdAndMean <- mutate(onlyStdAndMean, activity = activityLabels$V2[activity])

#****************************************************************************#
# 5 From the data set in step 4, creates a second, independent tidy data set #
# with the average of each variable for each activity and each subject.      #
#****************************************************************************#

averages <- 
  onlyStdAndMean %>%
  group_by(activity, subject_number) %>% #we get 6x30 combinations of activities and subjects
  summarise_each(funs(mean)) #by default it does not summarise by grouped values

#since this are now means of means and stds, add "mean" to the end of each variable name
#except the subject_number and activity variables
colnames(averages) = c("subject_number", "activity",
                       tail(paste(colnames(averages), "mean", sep = "-"), -2))

#export
write.table(averages, "./averaged_measurements.txt", sep="\t", row.name=FALSE)
