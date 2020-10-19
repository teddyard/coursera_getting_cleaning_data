# run_analysis.R
# Install package
library(reshape2)

# Reading Dataset
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
x_test <- read.table("test/X_test.txt")
x_train <- read.table("train/X_train.txt")
y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")

# Analysis of Dataset
# Merges the training and the test sets to create one data set.
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
# feature and activity info
feature <- read.table("features.txt")
a_label <- read.table("activity_labels.txt")
a_label[,2] <- as.character(a_label[,2])

# extract feature 'mean, std'
selectedCols <- grep("-(mean|std).*", as.character(feature[,2]))
selectedColNames <- feature[selectedCols, 2]
selectedColNames <- gsub("-mean", "Mean", selectedColNames)
selectedColNames <- gsub("-std", "Std", selectedColNames)
selectedColNames <- gsub("[-()]", "", selectedColNames)

#extract data by columns using descriptive name
x_data <- x_data[selectedCols]
allData <- cbind(subject_data, y_data, x_data)
colnames(allData) <- c("Subject", "Activity", selectedColNames)

allData$Activity <- factor(allData$Activity, levels = a_label[,1], labels = a_label[,2])
allData$Subject <- as.factor(allData$Subject)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
meltedData <- melt(allData, id = c("Subject", "Activity"))
tidyData <- dcast(meltedData, Subject + Activity ~ variable, mean)


write.table(tidyData, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)

