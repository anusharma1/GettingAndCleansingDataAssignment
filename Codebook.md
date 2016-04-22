---
output: html_document
---
CODEBOOK FOR TIDY DATA - Student Project
========================================

This document describes the data presented in "TidyDataSet.txt" which is the output of student project on "Getting and Cleaning Data".  The "tidy data" output is based on data collected to study Human Activity Recognition using Smartphones.

The data set contains summarized data of 30 subjects on 6 activities.  The data set includes 66 aggregated variables for each activity of every subject.  In all it contains 180 rows (one for each subject and activity) and 68 columns.

Original data source background 
===================================
The original data details can be sourced from ["Human Activity Recognition Using Smartphones Data Set Paper"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The HARUSD data is collected from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The original data is made available in multiple files separately as train and test sets with 561 attributes.  The student project output file data set is summarized with a single file and tidy data having fewer variables/features.


Tidy data set: From original data sets
======================================

HARUSD data is available in a ["zip file"](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  The source data is available in multiple files of which only the following data files are used to create the "tidy data set".


File folder/name | File contents
-------------- | --------------
features | descriptions of features/variables collected
activity_labels | the 6 activity descriptions
train/X_train | training data set pre-processed on equal time intervals for each subject and activity
train/y_train | labels for the variables in X_train file
train/subject_train | the subject (numbers) for whom the data is avaialable in X_train
test/X_test | test data set pre-processed on equal time intervals for each subject and activity
test/y_test | labels for the variables in X_test file
test/subject_test | the subject (numbers) for whom the data is avaialable in X_test

The TidyDataSet.txt is a single data file summarized from the above files to contain 
a single row for each subject and activity on the averages of 33 (out of 561 from source) variables means and standard deviations.  The process details are explained in README document.

Data elements in TidyDataSet.txt 
=================================

The TidyDataSet.txt is with a header and has 180 rows of 68 columns.  Each data row presents 66 variables of data aggregated by 'subject' and 'activity'.  The aggregates are averages of means and standard-deviations of 33 features.  The 68 columns are described below.

Column | Data Element | Description of the element
---------|-------------|---------------------------
1 | Subject | Experiment subject identity number.
2 | Activity | Activity of the subject for which the rest of the averaged variables are presented.
3 | tBodyAccMeanX_avg | Average of the tBodyAcc-mean()-X from train and test data sets.
4 | tBodyAccMeanY_avg | Average of the tBodyAcc-mean()-Y from train and test data sets.
5 | tBodyAccMeanZ_avg | Average of the tBodyAcc-mean()-Z from train and test data sets.
6 | tBodyAccStdX_avg | Average of the tBodyAcc-std()-X from train and test data sets.
7 | tBodyAccStdY_avg | Average of the tBodyAcc-std()-Y from train and test data sets.
8 | tBodyAccStdZ_avg | Average of the tBodyAcc-std()-Z from train and test data sets.
9 | tGravityAccMeanX_avg | Average of the tGravityAcc-mean()-X from train and test data sets.
10 | tGravityAccMeanY_avg | Average of the tGravityAcc-mean()-Y from train and test data sets.
11 | tGravityAccMeanZ_avg | Average of the tGravityAcc-mean()-Z from train and test data sets.
12 | tGravityAccStdX_avg | Average of the tGravityAcc-std()-X from train and test data sets.
13 | tGravityAccStdY_avg | Average of the tGravityAcc-std()-Y from train and test data sets.
14 | tGravityAccStdZ_avg | Average of the tGravityAcc-std()-Z from train and test data sets.
15 | tBodyAccJerkMeanX_avg | Average of the tBodyAccJerk-mean()-X from train and test data sets.
16 | tBodyAccJerkMeanY_avg | Average of the tBodyAccJerk-mean()-Y from train and test data sets.
17 | tBodyAccJerkMeanZ_avg | Average of the tBodyAccJerk-mean()-Z from train and test data sets.
18 | tBodyAccJerkStdX_avg | Average of the tBodyAccJerk-std()-X from train and test data sets.
19 | tBodyAccJerkStdY_avg | Average of the tBodyAccJerk-std()-Y from train and test data sets.
20 | tBodyAccJerkStdZ_avg | Average of the tBodyAccJerk-std()-Z from train and test data sets.
21 | tBodyGyroMeanX_avg | Average of the tBodyGyro-mean()-X from train and test data sets.
22 | tBodyGyroMeanY_avg | Average of the tBodyGyro-mean()-Y from train and test data sets.
23 | tBodyGyroMeanZ_avg | Average of the tBodyGyro-mean()-Z from train and test data sets.
24 | tBodyGyroStdX_avg | Average of the tBodyGyro-std()-X from train and test data sets.
25 | tBodyGyroStdY_avg | Average of the tBodyGyro-std()-Y from train and test data sets.
26 | tBodyGyroStdZ_avg | Average of the tBodyGyro-std()-Z from train and test data sets.
27 | tBodyGyroJerkMeanX_avg | Average of the tBodyGyroJerk-mean()-X from train and test data sets.
28 | tBodyGyroJerkMeanY_avg | Average of the tBodyGyroJerk-mean()-Y from train and test data sets.
29 | tBodyGyroJerkMeanZ_avg | Average of the tBodyGyroJerk-mean()-Z from train and test data sets.
30 | tBodyGyroJerkStdX_avg | Average of the tBodyGyroJerk-std()-X from train and test data sets.
31 | tBodyGyroJerkStdY_avg | Average of the tBodyGyroJerk-std()-Y from train and test data sets.
32 | tBodyGyroJerkStdZ_avg | Average of the tBodyGyroJerk-std()-Z from train and test data sets.
33 | tBodyAccMagMean_avg | Average of the tBodyAccMag-mean() from train and test data sets.
34 | tBodyAccMagStd_avg | Average of the tBodyAccMag-std() from train and test data sets.
35 | tGravityAccMagMean_avg | Average of the tGravityAccMag-mean() from train and test data sets.
36 | tGravityAccMagStd_avg | Average of the tGravityAccMag-std() from train and test data sets.
37 | tBodyAccJerkMagMean_avg | Average of the tBodyAccJerkMag-mean() from train and test data sets.
38 | tBodyAccJerkMagStd_avg | Average of the tBodyAccJerkMag-std() from train and test data sets.
39 | tBodyGyroMagMean_avg | Average of the tBodyGyroMag-mean() from train and test data sets.
40 | tBodyGyroMagStd_avg | Average of the tBodyGyroMag-std() from train and test data sets.
41 | tBodyGyroJerkMagMean_avg | Average of the tBodyGyroJerkMag-mean() from train and test data sets.
42 | tBodyGyroJerkMagStd_avg | Average of the tBodyGyroJerkMag-std() from train and test data sets.
43 | fBodyAccMeanX_avg | Average of the fBodyAcc-mean()-X from train and test data sets.
44 | fBodyAccMeanY_avg | Average of the fBodyAcc-mean()-Y from train and test data sets.
45 | fBodyAccMeanZ_avg | Average of the fBodyAcc-mean()-Z from train and test data sets.
46 | fBodyAccStdX_avg | Average of the fBodyAcc-std()-X from train and test data sets.
47 | fBodyAccStdY_avg | Average of the fBodyAcc-std()-Y from train and test data sets.
48 | fBodyAccStdZ_avg | Average of the fBodyAcc-std()-Z from train and test data sets.
49 | fBodyAccJerkMeanX_avg | Average of the fBodyAccJerk-mean()-X from train and test data sets.
50 | fBodyAccJerkMeanY_avg | Average of the fBodyAccJerk-mean()-Y from train and test data sets.
51 | fBodyAccJerkMeanZ_avg | Average of the fBodyAccJerk-mean()-Z from train and test data sets.
52 | fBodyAccJerkStdX_avg | Average of the fBodyAccJerk-std()-X from train and test data sets.
53 | fBodyAccJerkStdY_avg | Average of the fBodyAccJerk-std()-Y from train and test data sets.
54 | fBodyAccJerkStdZ_avg | Average of the fBodyAccJerk-std()-Z from train and test data sets.
55 | fBodyGyroMeanX_avg | Average of the fBodyGyro-mean()-X from train and test data sets.
56 | fBodyGyroMeanY_avg | Average of the fBodyGyro-mean()-Y from train and test data sets.
57 | fBodyGyroMeanZ_avg | Average of the fBodyGyro-mean()-Z from train and test data sets.
58 | fBodyGyroStdX_avg | Average of the fBodyGyro-std()-X from train and test data sets.
59 | fBodyGyroStdY_avg | Average of the fBodyGyro-std()-Y from train and test data sets.
60 | fBodyGyroStdZ_avg | Average of the fBodyGyro-std()-Z from train and test data sets.
61 | fBodyAccMagMean_avg | Average of the fBodyAccMag-mean() from train and test data sets.
62 | fBodyAccMagStd_avg | Average of the fBodyAccMag-std() from train and test data sets.
63 | fBodyBodyAccJerkMagMean_avg | Average of the fBodyBodyAccJerkMag-mean() from train and test data sets.
64 | fBodyBodyAccJerkMagStd_avg | Average of the fBodyBodyAccJerkMag-std() from train and test data sets.
65 | fBodyBodyGyroMagMean_avg | Average of the fBodyBodyGyroMag-mean() from train and test data sets.
66 | fBodyBodyGyroMagStd_avg | Average of the fBodyBodyGyroMag-std() from train and test data sets.
67 | fBodyBodyGyroJerkMagMean_avg | Average of the fBodyBodyGyroJerkMag-mean() from train and test data sets.
68 | fBodyBodyGyroJerkMagStd_avg | Average of the fBodyBodyGyroJerkMag-std() from train and test data sets.


References: 
===========

This dataset is only a student project summarization.  Please refer to the following paper for the original and raw data descriptions.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

