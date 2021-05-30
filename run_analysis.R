library(dplyr)

root <- './getting_and_cleaning_data_project/'
x_train <- read.table(paste(root, 'UCI HAR Dataset/train/X_train.txt', sep=''))
y_train <- read.table(paste(root, 'UCI HAR Dataset/train/y_train.txt', sep=''))
subject_train <- read.table(paste(root, 'UCI HAR Dataset/train/subject_train.txt', sep=''))

x_test <- read.table(paste(root, 'UCI HAR Dataset/test/X_test.txt', sep=''))
y_test <- read.table(paste(root, 'UCI HAR Dataset/test/y_test.txt', sep=''))
subject_test <- read.table(paste(root, 'UCI HAR Dataset/test/subject_test.txt', sep=''))

activity_labels <- read.table(paste(root, 'UCI HAR Dataset/activity_labels.txt', sep=''))
features <- read.table(paste(root, 'UCI HAR Dataset/features.txt', sep=''))

# merge train and test data
X <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# extracts only on mean and std
measurements <- features[grep('mean\\(\\)|std\\(\\)', features[,2]),]
X <- X[,measurements[,1]]

# use descriptive activity names
colnames(y) <- 'activity'
y$activitylabel <- factor(x=y$activity, labels=as.character(activity_labels[,2]))
activitylabel <- y[,-1]

# appropriately, labels the dataset with descriptive variable names
colnames(X) <- features[measurements[,1], 2]

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
colnames(subject) <- 'subject'
total <- cbind(X, activitylabel, subject)
average <- total %>% group_by(activitylabel, subject) %>% summarise_each(funs(mean))

write.table(average, file=paste(root, 'UCI HAR Dataset/tidydata.txt', sep=''),
            row.names=FALSE, col.names=FALSE)