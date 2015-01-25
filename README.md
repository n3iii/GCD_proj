Description of run_analysis.R

Preliminaries:
1. When I download and extracted the files in Ubuntu they were flattened into
   the data subdirectory of my working directory.  So all file access will
   point to the '/data' subdirectory.
2. The library 'dplyr' was needed.
3. Since in the lectures Jeff often used the '=' instead of the '<-', I will
   revert to my Pythonic past and join with him.  Also I tend to like single
   quotes.

Steps for creating the tidy data frame.

Step 0:  Construct the training and the test sets from the various pieces.
1. Using read.lines, create a vector from feature names file. This vector is 
   used to name the columns of both training and test data frames.
2. Create the test data frame.
   a. Using read.table, create a data frame from test variable file.
   b. Name the variable columns with feature names vector.
   c. Using read.table, create a data frame from test activity identifier file.
   d. Using read.table, create a data frame from test subject identifier file.
   e. First column bind the test subject data frame to the test variable data
      frame.
   f. Now column bind the test activity identifier data frame to the test
      variable data frame.  Order of operation is important so activity 
      identifier is first column.
3. Create the train data frame.
   a. Using read.table, create a data frame from train variable file.
   b. Name the variable columns with feature names vector.
   c. Using read.table, create a data frame from train activity identifier file.
   d. Using read.table, create a data frame from train subject identifier file.
   e. First column bind the train subject data frame to the train variable data
      frame.
   f. Now column bind the train activity identifier data frame to the train
      variable data frame.  Order of operation is important so activity 
      identifier is first column.

Step 1: Merge the training and the test sets to create one data set.
   a. Row bind the test data frame with the train data frame.

Step 2: Extract only the measurements on the mean and standard deviation for 
        each measurement. 
   a. Using grepl, create a logical vector for columns containing 'mean()'.
   b. Using grepl, create a logical vector for columns containing 'std()'.
   c. Add the logical vectors together.
   d. Set the first 2 columns of resulting vector (activity and subject) to TRUE.
   e. Using the resulting logical vector extract only those columns for a new DF.

Step 3: Use descriptive activity names to name the activities in the data set
   a. Using read.table, create a data frame from activity labels file.
   b. Merge activity labels data frame with data frame from step 2, using the
      first column of each.  They each have default name of 'V1'.
   c. Remove the activity identifier.

Step 4. Appropriately label the data set with descriptive variable names.
   a. Extract the data frame names from step 3 into a vector.
   b. Name the first two items of the vector to 'Activity' and 'Subject'.
   c. Using a loop over the third through end items of the vector:
      - strip the numbers off the names
      - change leading 't' to 'Time_'
      - change leading 'f' to 'FFT_'
      - change '-mean()' to '_Mean'
      - change '-std()' to '_Std
      - change trailing '-X', '-Y', or '-Z' to '_X', '_Y', or '_Z'
      - change 'BodyBody' to 'Body'
   d. Rename the step 3 data frame with the transformed vector

Step 5. From the data set in step 4, create a second, independent tidy data set 
        with the average of each variable for each activity and each subject.
   a. Using aggregate on the data frame from step 4 average the observation
      columns by activity and subject, creating a tidy data frame.
   b. Using write.table create a text file of the tidy data frame.
   
NOTE: To look at the tidy data text file, use read.table.
      To execute run_analysis.R
         a. all data files in the data subdirectory of the working directory
         b. in not, modify the script to access them.
         c. run the script - source('run_analysis.R')
