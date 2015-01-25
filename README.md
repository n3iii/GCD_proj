<h1>
Description of run_analysis.R
</h1>

<h2>
Preliminaries:
</h2>
<ol>
<li>When I download and extracted the files in Ubuntu they were flattened into the data subdirectory of my working directory.  So all file access will point to the '/data' subdirectory.
<li>The library 'dplyr' was needed.
<li>Since in the lectures Jeff often used the '=' instead of the '&lt;-', I will revert to my Pythonic past and join with him.  Also I tend to like single quotes.
</ol>
<h2>
Steps for creating the tidy data frame.
</h2>
Step 0:  Construct the training and the test sets from the various pieces.
<ol>
<li>Using read.lines, create a vector from feature names file. This vector is used to name the columns of both training and test data frames.
<li>Create the test data frame.
<ol>
<li>Using read.table, create a data frame from test variable file.
<li>Name the variable columns with feature names vector.
<li>Using read.table, create a data frame from test activity identifier file.
<li>Using read.table, create a data frame from test subject identifier file.
<li>First column bind the test subject data frame to the test variable data frame.
<li>Now column bind the test activity identifier data frame to the test variable data frame.  Order of operation is important so activity identifier is first column.
</ol>
<li>Create the train data frame.
<ol>
<li>Using read.table, create a data frame from train variable file.
<li>Name the variable columns with feature names vector.
<li>Using read.table, create a data frame from train activity identifier file.
<li> Using read.table, create a data frame from train subject identifier file.
<li>First column bind the train subject data frame to the train variable data frame.
<li>Now column bind the train activity identifier data frame to the train variable data frame.  Order of operation is important so activity identifier is first column.
</ol>
</ol>
Step 1: Merge the training and the test sets to create one data set.
<ol>
<li>Row bind the test data frame with the train data frame.
</ol>
Step 2: Extract only the measurements on the mean and standard deviation for each measurement. 
<ol>
<li>Using grepl, create a logical vector for columns containing 'mean()'.
<li>Using grepl, create a logical vector for columns containing 'std()'.
<li>Add the logical vectors together.
<li>Set the first 2 columns of resulting vector (activity and subject) to TRUE.
<li>Using the resulting logical vector extract only those columns for a new DF.
</ol>
Step 3: Use descriptive activity names to name the activities in the data set
<ol>   
<li>Using read.table, create a data frame from activity labels file.
<li>Merge activity labels data frame with data frame from step 2, using the first column of each.  They each have default name of 'V1'.
<li>Remove the activity identifier.
</ol>
Step 4. Appropriately label the data set with descriptive variable names.
<ol>   
<li>Extract the data frame names from step 3 into a vector.
<li>Name the first two items of the vector to 'Activity' and 'Subject'.
<li>Using a loop over the third through end items of the vector:
<ul>   
<li>strip the numbers off the names
<li>change leading 't' to 'Time_'
<li>change leading 'f' to 'FFT_'
<li>change '-mean()' to '_Mean'
<li>change '-std()' to '_Std
<li>change trailing '-X', '-Y', or '-Z' to '_X', '_Y', or '_Z'
<li>change 'BodyBody' to 'Body'
</ul>
<li>Rename the step 3 data frame with the transformed vector
</ol>

Step 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
<ol>   
<li>Using aggregate on the data frame from step 4 average the observation columns by activity and subject, creating a tidy data frame.
<li>Using write.table create a text file of the tidy data frame.
</ol>   
NOTE: To look at the tidy data text file, use read.table.
      To execute run_analysis.R
<ol>
<li>all data files in the data subdirectory of the working directory
<li>if not, modify the script to access them.
<li>run the script - source('run_analysis.R')
</ol>