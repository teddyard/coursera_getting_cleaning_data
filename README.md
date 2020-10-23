# Project description
This project is about getting and cleaning data set, perform analysis, and create a new tidy data set. The data set is collected from the accelerometers of the Samsung Galaxy S smartphone.

# Content
This repo consists of the following files:
1. run_analysis.R - is the source code file to run the analysis
2. Code Book.md - is the file containing all the information of the modified data set and analysis
3. tidy_dataset.txt - is the new data set after being modified

# Step before running the R script
Here are the steps before running the R code:
1. Download the data for this project here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. If you want to know the full description of the data you can check the following link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. Extract the data into your computer's directory
3. Put the following data into the same directory of your R script:
- features.txt
- subject_train.txt
- subject_test.txt
- X_train.txt
- X_test.txt
- y_train.txt
- y_test.txt
4. Make sure you donwload and install reshape2 package from CRAN. You can download it here https://cran.r-project.org/web/packages/reshape2/index.html


