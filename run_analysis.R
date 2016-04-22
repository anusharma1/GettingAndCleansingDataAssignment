## Packages required 
  require(sqldf)
  require(data.table)

## Setting up the working directory 
  setwd("C:/Users/hello/Desktop/Coursera/GettingAndCleaningData/Week4Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

##  Putting together Train Data Set
  
  ##  Reading data into table from Train text files 

  feature               <- read.table("features.txt")
  ActivityLabel         <- data.table(read.table("activity_labels.txt"))
  names(ActivityLabel)  <- c("ActivityL", "ActivityDescription")

  ## Reading data into table from the train text files
  subject_train         <- read.table("train/subject_train.txt")
  activity_train        <- read.table("train/Y_train.txt")
  variables_train       <- read.table("train/X_train.txt")

## Assigning Column headings                     

  names(variables_train)<- feature$V2
  names(subject_train)  <- "Subject"
  names(activity_train) <- "Activity"

## Compiling to  one train data set 

  trainset              <- cbind(subject_train,activity_train,variables_train)

## Putting together test data

## Reading data into table from the  train text files
  subject_test          <- read.table("test/subject_test.txt")
  activity_test         <-  read.table("test/Y_test.txt")
  variables_test        <-  read.table("test/X_test.txt")

## Assign column headings

  names(variables_test) <- feature$V2
  names(subject_test)   <- "Subject"
  names(activity_test)  <- "Activity"

## Combining Train Data Set and Test Data Set into one data set 

  testset               <- cbind(subject_test,activity_test,variables_test)

## combining train and test data sets to totaldataset
  totaldataset          <- rbind(trainset, testset)

## Finding the mean and std columns 
  tidydata              <- totaldataset[,c("subject", "Activity",grep("mean()",names(totaldataset),value= TRUE,fixed = TRUE), grep("std()",names(totaldataset),value= TRUE, fixed= TRUE))]

## Assigining descriptive activity labels for activity 
  Tidydataset           <- sqldf("select * 
                                 from tidydata 
                                 inner join ActivityLabel 
                                 on tidydata.Activity = ActivityLabel.ActivityL")
  Tidydataset           <- Tidydataset[,c(-2,-69)]

## Summarizing  tidydata set by subject and Activity

  # Removing "-,()"from the columnnames
  names(Tidydataset)    <- gsub("[-()]","", names(Tidydataset))
  
  # To keep avg, () and ,for the column names
  paste("avg(",names(Tidydataset),"),",sep = "")

#Creating  Independent data set  with averages of each activity 
  TidyMeanDataSet       <- sqldf("select Subject, ActivityDescription, 
                            avg(tBodyAccstdX),
                            avg(tBodyAccstdY),
                            avg(tBodyAccstdZ),
                            avg(tGravityAccstdX),
                            avg(tGravityAccstdY),
                            avg(tGravityAccstdZ),
                            avg(tBodyAccJerkstdX),
                            avg(tBodyAccJerkstdY),
                            avg(tBodyAccJerkstdZ),
                            avg(tBodyGyrostdX),
                            avg(tBodyGyrostdY),
                            avg(tBodyGyrostdZ),
                            avg(tBodyGyroJerkstdX),
                            avg(tBodyGyroJerkstdY),
                            avg(tBodyGyroJerkstdZ),
                            avg(tBodyAccMagstd),
                            avg(tGravityAccMagstd),
                            avg(tBodyAccJerkMagstd),
                            avg(tBodyGyroMagstd),
                            avg(tBodyGyroJerkMagstd),
                            avg(fBodyAccstdX),
                            avg(fBodyAccstdY),
                            avg(fBodyAccstdZ),
                            avg(fBodyAccJerkstdX),
                            avg(fBodyAccJerkstdY),
                            avg(fBodyAccJerkstdZ),
                            avg(fBodyGyrostdX),
                            avg(fBodyGyrostdY),
                            avg(fBodyGyrostdZ),
                            avg(fBodyAccMagstd),
                            avg(fBodyBodyAccJerkMagstd),
                            avg(fBodyBodyGyroMagstd),
                            avg(fBodyBodyGyroJerkMagstd),
                            avg(tBodyAccmeanX),
                            avg(tBodyAccmeanY),
                            avg(tBodyAccmeanZ),
                            avg(tGravityAccmeanX),
                            avg(tGravityAccmeanY),
                            avg(tGravityAccmeanZ),
                            avg(tBodyAccJerkmeanX),
                            avg(tBodyAccJerkmeanY),
                            avg(tBodyAccJerkmeanZ),
                            avg(tBodyGyromeanX),
                            avg(tBodyGyromeanY),
                            avg(tBodyGyromeanZ),
                            avg(tBodyGyroJerkmeanX),
                            avg(tBodyGyroJerkmeanY),
                            avg(tBodyGyroJerkmeanZ),
                            avg(tBodyAccMagmean),
                            avg(tGravityAccMagmean),
                            avg(tBodyAccJerkMagmean),
                            avg(tBodyGyroMagmean),
                            avg(tBodyGyroJerkMagmean),
                            avg(fBodyAccmeanX),
                            avg(fBodyAccmeanY),
                            avg(fBodyAccmeanZ),
                            avg(fBodyAccJerkmeanX),
                            avg(fBodyAccJerkmeanY),
                            avg(fBodyAccJerkmeanZ),
                            avg(fBodyGyromeanX),
                            avg(fBodyGyromeanY),
                            avg(fBodyGyromeanZ),
                            avg(fBodyAccMagmean),
                            avg(fBodyBodyAccJerkMagmean),
                            avg(fBodyBodyGyroMagmean),
                            avg(fBodyBodyGyroJerkMagmean)
                            from Tidydataset
                            group by Subject, ActivityDescription")

## Creating a file with the New Tidy Dataset
write.table(TidyMeanDataSet,"TidyData.txt", row.names = FALSE)


