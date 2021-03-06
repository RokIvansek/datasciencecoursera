The original dataset used for this project and its description can be found on [the UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The original dataset that is split into test and train parts was merged back together to obtain a new biger dataset.
Only specific variables were selected and some renaming was done. You can look at a detailed process of exactly what was done [in the README.md](https://github.com/RokIvansek/datasciencecoursera/blob/master/Getting_and_cleaning_data/course_project/README.md)

From this processed dataset a new dataset was created that contains the mean values of all features grouped by activity AND subject_number.
The variables in this dataset are:

"subject_number"
"activity"
"tBodyAcc-mean()-X-mean"
"tBodyAcc-mean()-Y-mean"
"tBodyAcc-mean()-Z-mean"
"tBodyAcc-std()-X-mean"
"tBodyAcc-std()-Y-mean"
"tBodyAcc-std()-Z-mean"
"tGravityAcc-mean()-X-mean"
"tGravityAcc-mean()-Y-mean"
"tGravityAcc-mean()-Z-mean"
"tGravityAcc-std()-X-mean"
"tGravityAcc-std()-Y-mean"
"tGravityAcc-std()-Z-mean"
"tBodyAccJerk-mean()-X-mean"
"tBodyAccJerk-mean()-Y-mean"
"tBodyAccJerk-mean()-Z-mean"
"tBodyAccJerk-std()-X-mean"
"tBodyAccJerk-std()-Y-mean"
"tBodyAccJerk-std()-Z-mean"
"tBodyGyro-mean()-X-mean"
"tBodyGyro-mean()-Y-mean"
"tBodyGyro-mean()-Z-mean"
"tBodyGyro-std()-X-mean"
"tBodyGyro-std()-Y-mean"
"tBodyGyro-std()-Z-mean"
"tBodyGyroJerk-mean()-X-mean"
"tBodyGyroJerk-mean()-Y-mean"
"tBodyGyroJerk-mean()-Z-mean"
"tBodyGyroJerk-std()-X-mean"
"tBodyGyroJerk-std()-Y-mean"
"tBodyGyroJerk-std()-Z-mean"
"tBodyAccMag-mean()-mean"
"tBodyAccMag-std()-mean"
"tGravityAccMag-mean()-mean"
"tGravityAccMag-std()-mean"
"tBodyAccJerkMag-mean()-mean"
"tBodyAccJerkMag-std()-mean"
"tBodyGyroMag-mean()-mean"
"tBodyGyroMag-std()-mean"
"tBodyGyroJerkMag-mean()-mean"
"tBodyGyroJerkMag-std()-mean"
"fBodyAcc-mean()-X-mean"
"fBodyAcc-mean()-Y-mean"
"fBodyAcc-mean()-Z-mean"
"fBodyAcc-std()-X-mean"
"fBodyAcc-std()-Y-mean"
"fBodyAcc-std()-Z-mean"
"fBodyAccJerk-mean()-X-mean"
"fBodyAccJerk-mean()-Y-mean"
"fBodyAccJerk-mean()-Z-mean"
"fBodyAccJerk-std()-X-mean"
"fBodyAccJerk-std()-Y-mean"
"fBodyAccJerk-std()-Z-mean"
"fBodyGyro-mean()-X-mean"
"fBodyGyro-mean()-Y-mean"
"fBodyGyro-mean()-Z-mean"
"fBodyGyro-std()-X-mean"
"fBodyGyro-std()-Y-mean"
"fBodyGyro-std()-Z-mean"
"fBodyAccMag-mean()-mean"
"fBodyAccMag-std()-mean"
"fBodyBodyAccJerkMag-mean()-mean"
"fBodyBodyAccJerkMag-std()-mean"
"fBodyBodyGyroMag-mean()-mean"
"fBodyBodyGyroMag-std()-mean"
"fBodyBodyGyroJerkMag-mean()-mean"
"fBodyBodyGyroJerkMag-std()-mean"

The dataset was exported as a [text file](https://github.com/RokIvansek/datasciencecoursera/blob/master/Getting_and_cleaning_data/course_project/averaged_measurements.txt) that can be found in the repository.

