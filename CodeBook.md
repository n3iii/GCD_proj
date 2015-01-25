Name of Data Set: tidydf.txt

Origins with attribution:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

Transformations to the original data set:
1. The data set was reconstructed from its parts, including activity names.
   The training and test sets were joined together.
2. Only the variables containing either 'mean()' or 'std()' were selected.
   This resulted in 66 measurement variables.
3. The variables were renamed more descriptively
4. The 66 measurement variables were summarized by activity and subject, 
   using the mean function.  This resulted in 180 observations, 6 activities by 
   30 subjects.

Measurement Names:  Measurement names are made up of 3 or 4 parts separated by 
                    the '_'.
1. signal type:
   a. Time: raw signals from the time domain.
   b. FFT: signals transformed to the frequence domain by Fast Fourier Transform
2. motion type, 2 to 4 parts separated by capitalization:
   a. Cause: gravity or body
   b. Measurement device: accelerometer or gyroscope
   c. Jerk: if present linear acceleration and angular velocity combined
   d. Mag: if present euclidean magnitude of 3 dimension signal
3. function type:
   a. Mean = mean of the measurements
   b. Std = standard deviation of the measurements
4. dimension direction (present if magnitude not calculated):
   a. X = x axis
   b. Y = y axis
   c. Z = z axis

Activity - character field of six activities
   a. LAYING
   b. SITTING
   c. STANDING
   d. WALKING
   e. WALKING_DOWNSTAIRS
   f. WALKING_UPSTAIRS
   
Subject - integers from 1 to 30 identifying the subjects

For description of the following see Measurement Names above.
Time_BodyAcc_Mean_X - numeric, max = 0.301461, min = 0.2215982 
Time_BodyAcc_Mean_Y - numeric, max = -0.001308288, min = -0.04051395
Time_BodyAcc_Mean_Z - numeric, max = -0.07537847, min = -0.1525139
Time_BodyAcc_Std_X - numeric, max = 0.6269171, min = -0.9960686
Time_BodyAcc_Std_Y - numeric, max = 0.616937, min = -0.9902409
Time_BodyAcc_Std_Z - numeric, max = 0.6090179, min = -0.9876587
Time_GravityAcc_Mean_X - numeric, max = 0.9745087, min =-0.6800432
Time_GravityAcc_Mean_Y - numeric, max = 0.9565938, min = -0.4798948
Time_GravityAcc_Mean_Z - numeric, max = 0.957873, min = -0.4950887
Time_GravityAcc_Std_X - numeric, max = -0.8295549, min = -0.9967642
Time_GravityAcc_Std_Y - numeric, max = -0.6435784, min = -0.9942476
Time_GravityAcc_Std_Z - numeric, max = -0.6101612, min = -0.9909572
Time_BodyAccJerk_Mean_X - numeric, max = 0.130193, min = 0.0426881
Time_BodyAccJerk_Mean_Y - numeric, max = 0.05681859, min = -0.03868721
Time_BodyAccJerk_Mean_Z - numeric, max = 0.03805336, min = -0.06745839
Time_BodyAccJerk_Std_X - numeric, max = 0.544273, min = -0.9946045
Time_BodyAccJerk_Std_Y - numeric, max = 0.3553067, min = -0.9895136
Time_BodyAccJerk_Std_Z - numeric, max = 0.03101571, min = -0.9932883
Time_BodyGyro_Mean_X - numeric, max = 0.1927045, min = -0.2057754
Time_BodyGyro_Mean_Y - numeric, max = 0.02747076, min = -0.2042054
Time_BodyGyro_Mean_Z - numeric, max = 0.1791021, min = -0.0724546
Time_BodyGyro_Std_X - numeric, max = 0.2676572, min = -0.9942766
Time_BodyGyro_Std_Y - numeric, max = 0.4765187, min = -0.9942105
Time_BodyGyro_Std_Z - numeric, max = 0.5648758, min = -0.9855384
Time_BodyGyroJerk_Mean_X - numeric, max = -0.02209163, min = -0.1572125
Time_BodyGyroJerk_Mean_Y - numeric, max = -0.01320228, min = -0.07680899
Time_BodyGyroJerk_Mean_Z - numeric, max = 0.006940664, min = -0.09249985
Time_BodyGyroJerk_Std_X - numeric, max = 0.1791486, min = -0.9965425
Time_BodyGyroJerk_Std_Y - numeric, max = 0.2959459, min = -0.9970816
Time_BodyGyroJerk_Std_Z - numeric, max = 0.1932065, min = -0.9953808
Time_BodyAccMag_Mean - numeric, max = 0.6446043, min = -0.9864932
Time_BodyAccMag_Std - numeric, max = 0.4284059, min = -0.9864645
Time_GravityAccMag_Mean - numeric, max = 0.6446043, min = -0.9864932
Time_GravityAccMag_Std - numeric, max = 0.4284059, min = -0.9864645
Time_BodyAccJerkMag_Mean - numeric, max = 0.4344904, min = -0.9928147
Time_BodyAccJerkMag_Std - numeric, max = 0.4506121, min = -0.9946469
Time_BodyGyroMag_Mean - numeric, max = 0.4180046, min = -0.9807408
Time_BodyGyroMag_Std - numeric, max = 0.299976, min = -0.9813727
Time_BodyGyroJerkMag_Mean - numeric, max = 0.08758166, min = -0.9973225
Time_BodyGyroJerkMag_Std - numeric, max = 0.2501732, min = -0.9976661
FFT_BodyAcc_Mean_X - numeric, max = 0.537012, min = -0.9952499
FFT_BodyAcc_Mean_Y - numeric, max = 0.5241877, min = -0.9890343
FFT_BodyAcc_Mean_Z - numeric, max = 0.280736, min = -0.9894739
FFT_BodyAcc_Std_X - numeric, max = 0.6585065, min = -0.9966046
FFT_BodyAcc_Std_Y - numeric, max = 0.5601913, min = -0.9906804
FFT_BodyAcc_Std_Z - numeric, max = 0.6871242, min = -0.9872248
FFT_BodyAccJerk_Mean_X - numeric, max = 0.4743173, min = -0.9946308
FFT_BodyAccJerk_Mean_Y - numeric, max = 0.2767169, min = -0.9893988
FFT_BodyAccJerk_Mean_Z - numeric, max = 0.1577757, min = -0.9920184
FFT_BodyAccJerk_Std_X - numeric, max = 0.4768039, min = -0.9950738
FFT_BodyAccJerk_Std_Y - numeric, max = 0.3497713, min = -0.9904681
FFT_BodyAccJerk_Std_Z - numeric, max = -0.006236475, min = -0.9931078
FFT_BodyGyro_Mean_X - numeric, max = 0.4749624, min = -0.9931226
FFT_BodyGyro_Mean_Y - numeric, max = 0.328817, min = -0.9940255
FFT_BodyGyro_Mean_Z - numeric, max = 0.4924144, min = -0.9859578
FFT_BodyGyro_Std_X - numeric, max = 0.1966133, min = -0.9946522
FFT_BodyGyro_Std_Y - numeric, max = 0.6462336, min = -0.9943531
FFT_BodyGyro_Std_Z - numeric, max = 0.5224542, min = -0.9867253
FFT_BodyAccMag_Mean - numeric, max = 0.5866376, min = -0.9868006
FFT_BodyAccMag_Std - numeric, max = 0.1786846, min = -0.9876485
FFT_BodyAccJerkMag_Mean - numeric, max = 0.5384048, min = -0.9939983
FFT_BodyAccJerkMag_Std - numeric, max = 0.3163464, min = -0.9943667
FFT_BodyGyroMag_Mean - numeric, max = 0.2039798, min = -0.9865352
FFT_BodyGyroMag_Std - numeric, max = 0.2366597, min = -0.9814688
FFT_BodyGyroJerkMag_Mean - numeric, max = 0.1466186, min = -0.9976174
FFT_BodyGyroJerkMag_Std - numeric, max = 0.2878346, min = -0.9975852