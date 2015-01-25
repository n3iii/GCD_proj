## this is redundate when the script is running but I use it ahead of time to 
## make sure I'm in my working directory, before source('run_analysis.R').
setwd("~/R/GCD")

library(dplyr)
#library(tidyr)

## 0. Construct the training and the test sets from the various pieces.
##    Each set will be built from their own:
##    - observation data file
##    - activity identifier file
##    - subject identifier file
##    They will use the same feature names file because they have the same 
##    feature columns.

##  PLEASE NOTE:  I am running Ubuntu.  When I downloaded and extracted the files
##  the extract flattened the files into the data subdirectory with no hierarchy.  
##  Therefore all file paths begin with 'data/' and only '/data'.

## Create the vector of feature names
featureFile = 'data/features.txt'
featureVec = readLines(featureFile)

## Read in the test data set
testFile = 'data/X_test.txt'
testDF = read.table(file = testFile, 
                    header = FALSE, 
                    stringsAsFactors = FALSE)

## Name the columns of the test DF
names(testDF) = featureVec

## Read in the test activity identifier file
testIdFile = 'data/y_test.txt'
testIdDF = read.table(file = testIdFile, 
                      header = FALSE, 
                      stringsAsFactors = FALSE)

## Read in the test subject file
testSubFile = 'data/subject_test.txt'
testSubDF = read.table(file = testSubFile, 
                      header = FALSE, 
                      stringsAsFactors = FALSE)

## Combine the subject with the observation
testObsDF = cbind(testSubDF, testDF)

## Combine the activity number with the observation
testObsDF = cbind(testIdDF, testObsDF)

## Read in the train data set
trainFile = 'data/X_train.txt'
trainDF = read.table(file = trainFile, 
                    header = FALSE, 
                    stringsAsFactors = FALSE)

## Name the columns of the train DF
names(trainDF) = featureVec

## Read in the train activity identifier file
trainIdFile = 'data/y_train.txt'
trainIdDF = read.table(file = trainIdFile, 
                       header = FALSE, 
                       stringsAsFactors = FALSE)

## Read in the train subject file
trainSubFile = 'data/subject_train.txt'
trainSubDF = read.table(file = trainSubFile, 
                       header = FALSE, 
                       stringsAsFactors = FALSE)

## Combine the subject with the observation
trainObsDF = cbind(trainSubDF, trainDF)

## Combine the activity number with the observation
trainObsDF = cbind(trainIdDF, trainObsDF)

## 1. Merge the training and the test sets to create one data set.
##    Concatenate the test and the train data frames
combDF = rbind(testObsDF, trainObsDF)

## 2. Extract only the measurements on the mean and standard deviation 
##    for each measurement. 
##    Extract only the mean and std columns, those containing "mean()" or "std()",
##    by creating a mean logical vector, a standard logical vector, add them 
##    together, also set the activity and subject to TRUE, then extract those 
##    columns into a new DF
selectmean = grepl("mean()", fixed = TRUE, names(combDF))
selectstd = grepl("std()", fixed = TRUE, names(combDF))
selectms = as.logical(selectmean + selectstd)
selectms[c(1,2)] = TRUE
msDF = combDF[, selectms]

## 3. Use descriptive activity names to name the activities in the data set
##    Name the activities using the activity labels by merging a DF of the labels
##    with the current DF on label Id, then remove the label Id

## read in the activity labels
actFile = 'data/activity_labels.txt'
actDF = read.table(file = actFile, 
                      header = FALSE, 
                      stringsAsFactors = FALSE)

## both DFs have the activity id in the first column.  
## both have the default name 'V1'.
endDF = merge(actDF, msDF, 'V1')
## Remove the activity ID
endDF1 = endDF[,2:length(endDF)]

## 4. Appropriately label the data set with descriptive variable names.
##    Perform the following steps to clean up the variable names:
##    - extract the data frame names into a vector
##    - name the first two items to 'Activity' and 'Subject'
##    - strip the numbers off the names
##    - change leading 't' to 'Time_'
##    - change leading 'f' to 'FFT_'
##    - change '-mean()' to '_Mean'
##    - change '-std()' to '_Std
##    - change trailing '-X', '-Y', or '-Z' to '_X', '_Y', or '_Z'
##    - change 'BodyBody' to 'Body'
##    - rename the data frame with the new vector

## extract the data frame names into a vector
wrkVec = names(endDF1)

## name the first two items to 'Activity' and 'Subject'
wrkVec[1] = 'Activity'
wrkVec[2] = 'Subject'

## pardon the anti-R loop, but it will do all the rest of the transformations.
## And it beats taking it outside of R to work on it.
for (i in 3:(length(wrkVec))) {
        wrkList = strsplit(wrkVec[i], ' ')
        wrkVal = wrkList[[1]][2]
        wrkValEnd = substr(wrkVal, 2, length(wrkVal))
        firstChar = substr(wrkVal, 1, 1)
        if (firstChar == 't') {
                wrkVal = paste('Time_', substr(wrkVal, 2, nchar(wrkVal)), sep = '')
        }
        if (firstChar == 'f') {
                wrkVal = paste('FFT_', substr(wrkVal, 2, nchar(wrkVal)), sep = '')
        }
        wrkVal = sub('-mean()', '_Mean', wrkVal, fixed=TRUE)
        wrkVal = sub('-std()', '_Std', wrkVal, fixed=TRUE)
        wrkVal = sub('-X', '_X', wrkVal, fixed=TRUE)
        wrkVal = sub('-Y', '_Y', wrkVal, fixed=TRUE)
        wrkVal = sub('-Z', '_Z', wrkVal, fixed=TRUE)
        wrkVal = sub('BodyBody', 'Body', wrkVal, fixed=TRUE)
        wrkVec[i] = wrkVal
}

## rename the data frame with the new vector
names(endDF1) = wrkVec 

## hey, let's get a start on the codebook
write.table(wrkVec, file='CodeBook.md', row.name=FALSE)

## 5. From the data set in step 4, create a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

## Aggregate the data by activity and subject using the mean function. 
tidyDF <-aggregate(endDF1[,-(1:2)], 
                  by=list('Activity'=endDF1$Activity, 'Subject'=endDF1$Subject), 
                  FUN=mean, na.rm=TRUE)

## Write the tidy DF out to a txt file.
write.table(tidyDF, file='tidyDF.txt', row.name=FALSE)