<h1>
Codebook for: tidydf.txt
</h1>
<h2>
Origins with attribution:
</h2>
<ul>
<li>Human Activity Recognition Using Smartphones Dataset Version 1.0
<li>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
<li>Smartlab - Non Linear Complex Systems Laboratory
<li>DITEN - Universit? degli Studi di Genova.
<li>Via Opera Pia 11A, I-16145, Genoa, Italy.
<li>activityrecognition@smartlab.ws
<li>www.smartlab.ws
</ul>
<h2>
Transformations to the original data set:
</h2>
<ol>
<li>The data set was reconstructed from its parts, including activity names.  The training and test sets were joined together.
<li>Only the variables containing either 'mean()' or 'std()' were selected.  This resulted in 66 measurement variables.
<li>The variables were renamed more descriptively
<li>The 66 measurement variables were summarized by activity and subject, using the mean function.  This resulted in 180 observations, 6 activities by 30 subjects.
</ol>
<h2>
Measurement Names:  Measurement names are made up of 3 or 4 parts separated by the '_'.
</h2>
<ol>
<li>signal type:
<ol>
<li>Time: raw signals from the time domain.
<li>FFT: signals transformed to the frequence domain by Fast Fourier Transform
</ol>
<li>motion type, 2 to 4 parts separated by capitalization:
<ol>
<li>Cause: gravity or body
<li>Measurement device: accelerometer or gyroscope
<li>Jerk: if present linear acceleration and angular velocity combined
<li>Mag: if present euclidean magnitude of 3 dimension signal
</ol>
<li>function type:
<ol>
<li>Mean = mean of the measurements
<li>Std = standard deviation of the measurements
</ol>
<li>dimension direction (present if magnitude not calculated):
<ol>
<li>X = x axis
<li>Y = y axis
<li>Z = z axis
</ol>
</ol>
<h2>
Columns in the data frame:
</h2>
For description of the measurement columns (3 - 68) see Measurement Names above.
<ol>
<li>Activity - character field of six activities
<ol>
<li>LAYING
<li>SITTING
<li>STANDING
<li>WALKING
<li>WALKING_DOWNSTAIRS
<li>WALKING_UPSTAIRS
</ol>
<li>Subject - integers from 1 to 30 identifying the subjects
<li>Time_BodyAcc_Mean_X - numeric, max = 0.301461, min = 0.2215982 
<li>Time_BodyAcc_Mean_Y - numeric, max = -0.001308288, min = -0.04051395
<li>Time_BodyAcc_Mean_Z - numeric, max = -0.07537847, min = -0.1525139
<li>Time_BodyAcc_Std_X - numeric, max = 0.6269171, min = -0.9960686
<li>Time_BodyAcc_Std_Y - numeric, max = 0.616937, min = -0.9902409
<li>Time_BodyAcc_Std_Z - numeric, max = 0.6090179, min = -0.9876587
<li>Time_GravityAcc_Mean_X - numeric, max = 0.9745087, min =-0.6800432
<li>Time_GravityAcc_Mean_Y - numeric, max = 0.9565938, min = -0.4798948
<li>Time_GravityAcc_Mean_Z - numeric, max = 0.957873, min = -0.4950887
<li>Time_GravityAcc_Std_X - numeric, max = -0.8295549, min = -0.9967642
<li>Time_GravityAcc_Std_Y - numeric, max = -0.6435784, min = -0.9942476
<li>Time_GravityAcc_Std_Z - numeric, max = -0.6101612, min = -0.9909572
<li>Time_BodyAccJerk_Mean_X - numeric, max = 0.130193, min = 0.0426881
<li>Time_BodyAccJerk_Mean_Y - numeric, max = 0.05681859, min = -0.03868721
<li>Time_BodyAccJerk_Mean_Z - numeric, max = 0.03805336, min = -0.06745839
<li>Time_BodyAccJerk_Std_X - numeric, max = 0.544273, min = -0.9946045
<li>Time_BodyAccJerk_Std_Y - numeric, max = 0.3553067, min = -0.9895136
<li>Time_BodyAccJerk_Std_Z - numeric, max = 0.03101571, min = -0.9932883
<li>Time_BodyGyro_Mean_X - numeric, max = 0.1927045, min = -0.2057754
<li>Time_BodyGyro_Mean_Y - numeric, max = 0.02747076, min = -0.2042054
<li>Time_BodyGyro_Mean_Z - numeric, max = 0.1791021, min = -0.0724546
<li>Time_BodyGyro_Std_X - numeric, max = 0.2676572, min = -0.9942766
<li>Time_BodyGyro_Std_Y - numeric, max = 0.4765187, min = -0.9942105
<li>Time_BodyGyro_Std_Z - numeric, max = 0.5648758, min = -0.9855384
<li>Time_BodyGyroJerk_Mean_X - numeric, max = -0.02209163, min = -0.1572125
<li>Time_BodyGyroJerk_Mean_Y - numeric, max = -0.01320228, min = -0.07680899
<li>Time_BodyGyroJerk_Mean_Z - numeric, max = 0.006940664, min = -0.09249985
<li>Time_BodyGyroJerk_Std_X - numeric, max = 0.1791486, min = -0.9965425
<li>Time_BodyGyroJerk_Std_Y - numeric, max = 0.2959459, min = -0.9970816
<li>Time_BodyGyroJerk_Std_Z - numeric, max = 0.1932065, min = -0.9953808
<li>Time_BodyAccMag_Mean - numeric, max = 0.6446043, min = -0.9864932
<li>Time_BodyAccMag_Std - numeric, max = 0.4284059, min = -0.9864645
<li>Time_GravityAccMag_Mean - numeric, max = 0.6446043, min = -0.9864932
<li>Time_GravityAccMag_Std - numeric, max = 0.4284059, min = -0.9864645
<li>Time_BodyAccJerkMag_Mean - numeric, max = 0.4344904, min = -0.9928147
<li>Time_BodyAccJerkMag_Std - numeric, max = 0.4506121, min = -0.9946469
<li>Time_BodyGyroMag_Mean - numeric, max = 0.4180046, min = -0.9807408
<li>Time_BodyGyroMag_Std - numeric, max = 0.299976, min = -0.9813727
<li>Time_BodyGyroJerkMag_Mean - numeric, max = 0.08758166, min = -0.9973225
<li>Time_BodyGyroJerkMag_Std - numeric, max = 0.2501732, min = -0.9976661
<li>FFT_BodyAcc_Mean_X - numeric, max = 0.537012, min = -0.9952499
<li>FFT_BodyAcc_Mean_Y - numeric, max = 0.5241877, min = -0.9890343
<li>FFT_BodyAcc_Mean_Z - numeric, max = 0.280736, min = -0.9894739
<li>FFT_BodyAcc_Std_X - numeric, max = 0.6585065, min = -0.9966046
<li>FFT_BodyAcc_Std_Y - numeric, max = 0.5601913, min = -0.9906804
<li>FFT_BodyAcc_Std_Z - numeric, max = 0.6871242, min = -0.9872248
<li>FFT_BodyAccJerk_Mean_X - numeric, max = 0.4743173, min = -0.9946308
<li>FFT_BodyAccJerk_Mean_Y - numeric, max = 0.2767169, min = -0.9893988
<li>FFT_BodyAccJerk_Mean_Z - numeric, max = 0.1577757, min = -0.9920184
<li>FFT_BodyAccJerk_Std_X - numeric, max = 0.4768039, min = -0.9950738
<li>FFT_BodyAccJerk_Std_Y - numeric, max = 0.3497713, min = -0.9904681
<li>FFT_BodyAccJerk_Std_Z - numeric, max = -0.006236475, min = -0.9931078
<li>FFT_BodyGyro_Mean_X - numeric, max = 0.4749624, min = -0.9931226
<li>FFT_BodyGyro_Mean_Y - numeric, max = 0.328817, min = -0.9940255
<li>FFT_BodyGyro_Mean_Z - numeric, max = 0.4924144, min = -0.9859578
<li>FFT_BodyGyro_Std_X - numeric, max = 0.1966133, min = -0.9946522
<li>FFT_BodyGyro_Std_Y - numeric, max = 0.6462336, min = -0.9943531
<li>FFT_BodyGyro_Std_Z - numeric, max = 0.5224542, min = -0.9867253
<li>FFT_BodyAccMag_Mean - numeric, max = 0.5866376, min = -0.9868006
<li>FFT_BodyAccMag_Std - numeric, max = 0.1786846, min = -0.9876485
<li>FFT_BodyAccJerkMag_Mean - numeric, max = 0.5384048, min = -0.9939983
<li>FFT_BodyAccJerkMag_Std - numeric, max = 0.3163464, min = -0.9943667
<li>FFT_BodyGyroMag_Mean - numeric, max = 0.2039798, min = -0.9865352
<li>FFT_BodyGyroMag_Std - numeric, max = 0.2366597, min = -0.9814688
<li>FFT_BodyGyroJerkMag_Mean - numeric, max = 0.1466186, min = -0.9976174
<li>FFT_BodyGyroJerkMag_Std - numeric, max = 0.2878346, min = -0.9975852
</ol>