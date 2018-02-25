# Getting and Cleaning Data - Course Project week 4

This repository is hosting my week 4 assignment for the Getting and Cleaning Data course which is part of the Johns Hopkins Data Science Specialization at Coursera.

The purpose of this assignment is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

UCI - Machine Learning Repository - 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The raw data input file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Description of the included files in this repository

The code in file run_analysis.R assumes that the Samsung data is in your working directory.

1. **run_analysis.R** - the actual R script containing all the code to perform the analysis and produce the outcome

1. **average_data.txt** - the outcome of when running the run_analysis.R script, a tidy dataset according to instructions 

1. **README.md** - this file, general description for this repository

1. **CodeBook.md** - a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data


## Instructions for the assignment:

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


