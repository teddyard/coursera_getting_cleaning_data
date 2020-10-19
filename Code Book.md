# Project Introduction
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

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

The variable calculated for this project is standar deviation and mean only. This data is collected from the merging of two datasets, the trian data and the test data.

# Tidy Data
Independent tidy data set with the average of each variable for each activity and each subject was created after label the new data set with variable names.
