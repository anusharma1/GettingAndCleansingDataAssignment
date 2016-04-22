---
output: pdf_document
---
# README - Tidy Data Project 

=================================================================  
Anupama Kulkarni 
Getting and Cleaning Data-Coursera 
==================================================================

# Original data source background 

The original data details can be sourced from ["Human Activity Recognition Using Smartphones Data Set Paper"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The HARUSD data is collected from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The original data is made available in multiple files separately as train and test sets with 561 attributes.  The student project output file data set is summarized with a single file and tidy data having fewer variables/features.

## For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## A subset of the raw data files are used

The original source ["HARUSD"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) provides many data files, however only the following files are used for processing the TidyDataSet.txt:

File folder/name | File contents
-------------- | --------------
features | descriptions of features/variables collected
activity_labels | the 6 activity descriptions
train/X_train | training data set pre-processed on equal time intervals for each subject and activity
train/y_train | labels for the variables in X_train file
train/subject_train | the subject (numbers) for whom the data is available in X_train
test/X_test | test data set pre-processed on equal time intervals for each subject and activity
test/y_test | labels for the variables in X_test file
test/subject_test | the subject (numbers) for whom the data is available in X_test


# Tidy data set: Transformation from raw data:


The transformations are per the student project to produce a single tidy data file from the above listed files. "run_analysis.R" does the following to read the above listed raw files and transforms to "TidyDataSet.txt" output file following the process steps listed below

1. Merge train and test data sets to a single TotalSet
    + First read the raw data files
    + Appropriately label the data set with descriptive variable names
    + Prepare a single data set for each of Train and Test
    + Merge/combine train and test data sets into single TotalSet
2. Extract only the measurements on the mean and standard deviation for each measurement
    # Identify required measurements
    # Create a data set with only required measurements
3. Assign descriptive activity names to name the activities in the data set
4. creates an independent tidy data set with the average of each variable for each activity and each subject


# Reproducibility

The TidyDataSet.txt can be reproduced with the data set files made available in this folder:

- README.md
- Codebook.md
- TidyDataSet.txt
- run_analysis.R

It would require the raw data set to be downloaded and extracted in the same folder as the code is available.  It is expected that the following files will be available in the following structure in the working directory:


* train 
    + subject_train 
    + X_train 
    + y_train 
* test 2
    + subject_test 
    + X_test 
    + y_test 
* activity_labels.txt 
* features.txt   

# References

The output of the student project is originally sourced from the following:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

