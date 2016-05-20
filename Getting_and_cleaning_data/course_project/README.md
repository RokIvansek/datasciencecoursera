The script run_analysis.R uses the dplyr package to perform its tasks.
It performs the following steps:

1. It loads the necessary data into R:
⋅⋅* X_test.txt
⋅⋅* subject_test.txt
⋅⋅* y_test.txt
⋅⋅* X_train.txt
⋅⋅* subject_train.txt
⋅⋅* y_train.txt

2. It merges the data using dplyrs mutate function and base Rs rbind

3. It assigns the variable names from the file features.txt to the merged data frame

4. Using subseting it selects only the variables from the merged data that are either mean or std values.
⋅⋅* Note: _Only the variables with substring "mean()" or "std()" were selected, meaning variables like "angle(X,gravityMean)" were not._

5. The values from activity column in the dataset were replaced with names from the activity_labels.txt file.

6. A new dataset named averages gets created. It groups the data by activity and subject_number. This results in 180 groups.
It calculates the mean for each of these groups. The column names of this data frame are also slightly changed (the word mean gets
added at the end of each variable name).

7. The new dataset is exported as .txt file in the current directory.
