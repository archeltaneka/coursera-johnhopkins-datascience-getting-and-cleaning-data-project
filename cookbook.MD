# Project Cookbook

## Dataset Description
The dataset was obtained through experiments with a group of people wearing smartphones on their waists. Equipped with acceloremeter and gyroscope, it produces 3-axial linear acceleration and 3-axial angular velocity. The data is labelled manually from video recordings. Finally, the data was randomly partitioned into two parts: 70% for training and 30% for testing.

## Workflow
The script `run_analysis.R` more or less follows the below workflow:
1. Merges the training and test partition to create a whole dataset. This includes:
    - Read features (X) and labels (y)
    - Read feature vectors
    - Read activity labels
    - Read variable names
    - Merge

2. Extracts only the measurements on the mean and standard deviation for each measurement.
    - Include each column in the merged dataset has the word "mean" or "std".

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    - Save the second tidy dataset in a `.txt` file (`tidydata.txt`)

## Variables
- `x_train`, `x_test`, `y_train`, `y_test`, `subject_train`, `subject_test`, `activity_labels`, and `features` are all obtained from the original files (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

- `X`, `y`, and `subject` contain the merged data that are ready to be used for analysis and training purposes

- `average` contains the requested "average of each variable for each activity and each subject" task in a form of table.