# Loads the namespace of the package plyr and attach it on the search list
# plyr: Tools for Splitting, Applying and Combining Data
# https://cran.r-project.org/web/packages/plyr/index.html

library(plyr)

# 1. Merges the training and the test sets to create one data set.
############################################################################

# Reads data into three variables
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Reads data into three variables
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Combines train and test for the x_data set
x_data <- rbind(x_train, x_test)

# Combines train and test for the y_data set
y_data <- rbind(y_train, y_test)

# Combines train and test for the subject_data set
subject_data <- rbind(subject_train, subject_test)


# 2. Extracts only the measurements on the mean 
#    and standard deviation for each measurement.
############################################################################

# Reads data from features.txt file into a variable called features
features <- read.table("features.txt")

# Creates a variable with only mean() OR std() in their names
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# Creates a subset variable the desired columns and modifies the names
x_data <- x_data[, mean_and_std_features]
names(x_data) <- features[mean_and_std_features, 2]


# 3. Uses descriptive activity names to name the activities in the data set
############################################################################

# Reads the 6 activities data into a variable called activities
activities <- read.table("activity_labels.txt")

# Renames values with activity names and column name
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"


# 4. Appropriately labels the data set with descriptive variable names.
############################################################################

# Labels the column name
names(subject_data) <- "subject"

# Creates a variable with data combined to one data set
combined_data <- cbind(x_data, y_data, subject_data)


# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
############################################################################

# Creates a variable with average data, not including subject and activity columns
average_data <- ddply(combined_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

# Creates a file with tidy average data in a table format with descriptive 
# label in first row of each column starting with subject and then activity
write.table(average_data, "average_data.txt", row.name=FALSE)

# ddply : Split Data Frame, Apply Function, And Return Results In A Data Frame
