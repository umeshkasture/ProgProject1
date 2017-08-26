# Script run_analysis.R 
# Script operates on data containted in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# It performs following tasks

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
library(dplyr)

#Step 1
X_train <- read.table("UCI HAR Dataset/train/X_train.txt") %>% tbl_df()
y_train <- read.table("UCI HAR Dataset/train/y_train.txt") %>% tbl_df()
s_train <- read.table("UCI HAR Dataset/train/subject_train.txt") %>% tbl_df()
X_test <- read.table("UCI HAR Dataset/test/X_test.txt") %>% tbl_df()
y_test <- read.table("UCI HAR Dataset/test/y_test.txt") %>% tbl_df()
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt") %>% tbl_df()

#
#names(X_train) <- read.table("UCI HAR Dataset/features.txt")[[2]]
#names(X_test) <- read.table("UCI HAR Dataset/features.txt")[[2]]
names(y_train) <- "activity"
names(s_train) <- "subject"
names(y_test) <- "activity"
names(s_test) <- "subject"

final <- rbind( cbind(s_train, y_train, X_train), 
                cbind(s_test, y_test, X_test))
rm(s_train, y_train, X_train, s_test, y_test, X_test)


## Step 2
f_name <- read.table("UCI HAR Dataset/features.txt")
final <- select(final, activity, subject, grep(pattern = "mean|std", f_name[[2]])+2)

## Step 3
a_name <- read.table("UCI HAR Dataset/activity_labels.txt")
names(a_name) <- c("activity", "ActivityName")
final <- inner_join(final, a_name)
rm(a_name)

# Setp 4
features <- grep(pattern = "mean|std", f_name[[2]], value = TRUE)
features <- gsub(pattern = "[^[:alpha:]|[:digit:]]+", replacement = "_", features)
names(final)[3:81] <- features
rm(f_name, features)

# Step 5
final <- final %>% select(subject, ActivityName, 3:81) %>% group_by(subject, ActivityName)
summarized_final <- summarise_all(final, mean)
write.csv(summarized_final, file = "SummarizedFinal.csv")
