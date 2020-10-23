# Introduction
This code book describes the data used in this project as well as the processing.

# Data Source
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and the data for the project is taken from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Data Variable and Calculation


    subject_test : subject IDs for test

    subject_train : subject IDs for train

    X_test : values of variables in test

    X_train : values of variables in train

    y_test : activity ID in test

    y_train : activity ID in train

    activity_labels : Description of activity IDs in y_test and y_train

    features : description(label) of each variables in X_test and X_train

    dataSet : bind of X_train and X_test

The variable calculated for this project is standar deviation and mean only for each measurement. This data is collected from two datasets, the train data and the test data, and merge it into a single data set.

# Tidy Data
Independent tidy data set with the average of each variable for each activity and each subject was created after labeling the new data set with variable names.
