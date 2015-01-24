Feature Selection 
=================

The variables selected for the "tidyDataS.txt" file come from the the "UCI HAR Dataset". That is data from experiments that have been carried out with a group of 30 volunteers (19-49 years old) performing a couple of activities while wearing a smartphone on their waist that captured linear acceleration and angular velocity in 3 dimensions at a constant frequence. Linear acceleration was measured by the smartphone intern accelerator, angular velocity by the embedded gyroscope. The original variable names were changed (1) to make them more descriptive and (2) to avoid potentially analysis problems. Only varibales for mean value "mean" and standard deviation "std" are included plus an "Activity" and a "Subject" variable (see below). **The data represents the average of each variable for each activity and each subject.** For more information on the initial features of that database, see "features_info" included in the "UCI HAR Dataset" folder.

Variable Description
====================

* "Activity"...one of the performed activities, either walking, walking_upwards, walking_downwards, sitting, standing or laying
* "Subject"...number encoding the volunteers, ranging from 1 to 30
* "TimeBodyAcceleration_mean_X"...mean value of the time domain body acceleration signal in X direction 
* "TimeBodyAcceleration_mean_Y"...mean value of the time domain body acceleration signal in Y direction 
* "TimeBodyAcceleration_mean_Z"...mean value of the time domain body acceleration signal in Z direction 
* "TimeBodyAcceleration_std_X"...standard deviation of the time domain body acceleration signal in X direction
* "TimeBodyAcceleration_std_Y"...standard deviation of the time domain body acceleration signal in Y direction
* "TimeBodyAcceleration_std_Z"...standard deviation of the time domain body acceleration signal in Z direction
* "TimeGravityAcceleration_mean_X"...mean value of the time domain gravity acceleration signal in X direction
* "TimeGravityAcceleration_mean_Y"...mean value of the time domain gravity acceleration signal in Y direction
* "TimeGravityAcceleration_mean_Z"...mean value of the time domain gravity acceleration signal in Z direction
* "TimeGravityAcceleration_std_X"...standard deviation of the time domain gravity acceleration signal in X direction
* "TimeGravityAcceleration_std_Y"...standard deviation of the time domain gravity acceleration signal in Y direction
* "TimeGravityAcceleration_std_Z"...standard deviation of the time domain gravity acceleration signal in Z direction
* "TimeBodyAccelerationJerk_mean_X"...mean value of the time domain body acceleration Jerk signal in X direction
* "TimeBodyAccelerationJerk_mean_Y"...mean value of the time domain body acceleration Jerk signal in Y direction
* "TimeBodyAccelerationJerk_mean_Z"...mean value of the time domain body acceleration Jerk signal in Z direction
* "TimeBodyAccelerationJerk_std_X"...standard deviation of the time domain body acceleration Jerk signal in X direction
* "TimeBodyAccelerationJerk_std_Y"...standard deviation of the time domain body acceleration Jerk signal in Y direction
* "TimeBodyAccelerationJerk_std_Z"...standard deviation of the time domain body acceleration Jerk signal in Z direction
* "TimeBodyGyroscope_mean_X"...mean value of the time domain body velocity signal in X direction
* "TimeBodyGyroscope_mean_Y"...mean value of the time domain body velocity signal in Y direction
* "TimeBodyGyroscope_mean_Z"...mean value of the time domain body velocity signal in Z direction
* "TimeBodyGyroscope_std_X"...standard deviation of the time domain body velocity signal in X direction
* "TimeBodyGyroscope_std_Y"...standard deviation of the time domain body velocity signal in Y direction
* "TimeBodyGyroscope_std_Z"...standard deviation of the time domain body velocity signal in Z direction
* "TimeBodyGyroscopeJerk_mean_X"...mean value of the time domain body velocity Jerk signal in X direction
* "TimeBodyGyroscopeJerk_mean_Y"...mean value of the time domain body velocity Jerk signal in Y direction
* "TimeBodyGyroscopeJerk_mean_Z"...mean value of the time domain body velocity Jerk signal in Z direction
* "TimeBodyGyroscopeJerk_std_X"...standard deviation of the time domain body velocity Jerk signal in X direction
* "TimeBodyGyroscopeJerk_std_Y"...standard deviation of the time domain body velocity Jerk signal in Y direction
* "TimeBodyGyroscopeJerk_std_Z"...standard deviation of the time domain body velocity Jerk signal in Z direction
* "TimeBodyAccelerationMagnitude_mean"...mean value of the time domain body acceleration magnitude
* "TimeBodyAccelerationMagnitude_std"...standard deviation of the time domain body acceleration magnitude
* "TimeGravityAccelerationMagnitude_mean"...mean value of the time domain gravity acceleration magnitude
* "TimeGravityAccelerationMagnitude_std"...standard deviation of the time domain gravity acceleration magnitude
* "TimeBodyAccelerationJerkMagnitude_mean"...mean value of the time domain gravity acceleration Jerk magnitude
* "TimeBodyAccelerationJerkMagnitude_std"...standard deviation of the time domain gravity acceleration Jerk magnitude
* "TimeBodyGyroscopeMagnitude_mean"...mean value of the time domain body velocity magnitude
* "TimeBodyGyroscopeMagnitude_std"...standard deviation of the time domain body velocity magnitude
* "TimeBodyGyroscopeJerkMagnitude_mean"...mean value of the time domain body velocity Jerk magnitude
* "TimeBodyGyroscopeJerkMagnitude_std"...standard deviation of the time domain body velocity Jerk magnitude
* "FrequenceBodyAcceleration_mean_X"...mean value of the frequence domain body acceleration signal in X direction
* "FrequenceBodyAcceleration_mean_Y"...mean value of the frequence domain body acceleration signal in Y direction
* "FrequenceBodyAcceleration_mean_Z"...mean value of the frequence domain body acceleration signal in Z direction
* "FrequenceBodyAcceleration_std_X"...standard deviation of the frequence domain body acceleration signal in X direction
* "FrequenceBodyAcceleration_std_Y"...standard deviation of the frequence domain body acceleration signal in Y direction
* "FrequenceBodyAcceleration_std_Z"...standard deviation of the frequence domain body acceleration signal in Z direction
* "FrequenceBodyAccelerationJerk_mean_X"...mean value of the frequence domain body acceleration Jerk signal in X direction
* "FrequenceBodyAccelerationJerk_mean_Y"...mean value of the frequence domain body acceleration Jerk signal in Y direction
* "FrequenceBodyAccelerationJerk_mean_Z"...mean value of the frequence domain body acceleration Jerk signal in Z direction
* "FrequenceBodyAccelerationJerk_std_X"...standard deviation of the frequence domain body acceleration Jerk signal in X direction
* "FrequenceBodyAccelerationJerk_std_Y"...standard deviation of the frequence domain body acceleration Jerk signal in Y direction
* "FrequenceBodyAccelerationJerk_std_Z"...standard deviation of the frequence domain body acceleration Jerk signal in Z direction
* "FrequenceBodyGyroscope_mean_X"...mean value of the frequence domain body velocity signal in X direction
* "FrequenceBodyGyroscope_mean_Y"...mean value of the frequence domain body velocity signal in Y direction
* "FrequenceBodyGyroscope_mean_Z"...mean value of the frequence domain body velocity signal in Z direction
* "FrequenceBodyGyroscope_std_X"...standard deviation of the frequence domain body velocity signal in X direction
* "FrequenceBodyGyroscope_std_Y"...standard deviation of the frequence domain body velocity signal in Y direction
* "FrequenceBodyGyroscope_std_Z"...standard deviation of the frequence domain body velocity signal in Z direction
* "FrequenceBodyAccelerationMagnitude_mean"...mean value of the frequence domain body acceleration magnitude
* "FrequenceBodyAccelerationMagnitude_std"...standard deviation of the frequence domain body acceleration magnitude
* "FrequenceBodyAccelerationJerkMagnitude_mean"...mean value of the frequence domain body acceleration Jerk magnitude
* "FrequenceBodyAccelerationJerkMagnitude_std"...standard deviation of the frequence domain body acceleration Jerk magnitude
* "FrequenceBodyGyroscopeMagnitude_mean"...mean value of the frequence domain body velocity magnitude
* "FrequenceBodyGyroscopeMagnitude_std"...standard deviation of the frequence domain body velocity magnitude
* "FrequenceBodyGyroscopeJerkMagnitude_mean"...mean value of the frequence domain body velocity Jerk magnitude
* "FrequenceBodyGyroscopeJerkMagnitude_std"...standard deviation of the frequence domain body velocity Jerk magnitude
