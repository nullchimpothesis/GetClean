#------------------------------------------------------------------------------
#run_analysis.R
#A Required file for the Course Project for Getting and Cleaning Data

#Requirements
#the following libraries will need to be present in order for this
#script to work:
require(reshape)
require(reshape2)
#Project Requirements:
#Merges the training and the test sets to create one data set.

#Check for the UCI HAR Dataset directory
#if the directory is there, skip the download and unzip steps
#if the directory is not there, download the file and unzip the directory

if (file.exists("UCI HAR Dataset/features.txt")) {
  print("Directory already exists.")
} else {
  print("Need to download data.")
  fetchFile<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fetchFile, destfile="temp.zip")
  unzip("temp.zip")
}

#read the column names into the features variables, and apply appropriate
#"tidy data" naming
features<-read.table("UCI HAR Dataset/features.txt", sep="")
features<-tolower(features[,2])
features<-gsub("[\\( \\) \\-]", " ", features)
features<-gsub(",", " ", features)
features<-gsub("\\s+", " ", features)
features<-sub("\\s$", "", features)

#read the Test and Train Data sets into variables and rbind them together
testSet<-read.table("UCI HAR Dataset/test/X_test.txt", 
                    colClasses="numeric")
trainSet<-read.table("UCI HAR Dataset/train/X_train.txt", 
                     colClasses="numeric")
allData<-rbind(testSet, trainSet)

#read the subjects variables into 
testSubjects<-read.table("UCI HAR Dataset/test/subject_test.txt", sep="")
trainSubjects<-read.table("UCI HAR Dataset/train/subject_train.txt", sep="")
allSubjects<-rbind(testSubjects, trainSubjects)

#read the labels variables into the testLabels and trainLabels variables
#and combine into the allLabels variable, this results in descriptive 
#activity names:
#WALKING
#WALKING_UPSTAIRS
#WALKING_DOWNSTAIRS
#SITTING
#STANDING
#LAYING

testLabels<-read.table("UCI HAR Dataset/test/y_test.txt", sep="")
trainLabels<-read.table("UCI HAR Dataset/train/y_train.txt", sep="")
allLabels<-rbind(testLabels, trainLabels)
activities<-read.table("UCI HAR Dataset/activity_labels.txt", sep="")
actAll<-merge(activities, allLabels)

allTables<-cbind(allData, allSubjects)
allTables<-cbind(allTables, actAll[,2])
names(allTables)<-c(features, "testsubject", "activity")
#remove unnecessary data objects
rm(allData)
rm(allLabels)
rm(allSubjects)
rm(testSet)
rm(testSubjects)
rm(testLabels)
rm(trainSet)
rm(trainSubjects)
rm(trainLabels)

#Extract only the measurements on the mean and standard deviation for each 
#measurement. 
colArray1<-grep("mean", names(allTables))
colArray2<-grep("std", names(allTables))

#add the merged columns which don't have mean or std in them 
colArray<-c(562, 563, colArray1, colArray2)
subTables<-allTables[,colArray]

#Remove allTables to save room
rm(allTables)

#Create the Tidy Data Set for the mean and std of each variable and save it 
#to a file
meltData<-melt(subTables, id.vars=c("testsubject", "activity"))
lastFrame<-dcast(meltData, activity + testsubject ~ variable,mean)
write.table(lastFrame, file="finalData.txt", sep="\t", row.names=FALSE)
