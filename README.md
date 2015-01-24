# GettingAndCleaningData
Repo for the course project (Coursera)

This is a short description of "run_analysis.R"
-----------------------------------------------------------------------------------------------------------------------
The function is defined for the "Human Activity Recognition Using Smartphones Dataset, Verion 1.0"
provided by: 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The data is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and as stated in the corresponding README "This dataset is distributed AS-IS and no responsibility implied or explicit 
can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited."

Any use of this dataset in publications must be acknowledged by referencing:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted 
Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
-----------------------------------------------------------------------------------------------------------------------
The experiments have been carried out with a group of 30 volunteers of different ages (19-49 years) performing a couple 
of activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a smartphone
on their waist that captured linear acceleration and angular velocity in 3 dimensions at a constant frequence.
For more information about the data please see the corresponding README.

To run "run_analysis.R" you need to download the zip file from above and set your working directory to the "UCI HAR 
Dataset" folder, which contains the "train" and "test" folders. The "run_analysis.R" script also goes into the "UCI 
HAR Dataset" folder. The script requires the "plyr package" to be installed (it will automatically be loaded from the 
script).

All individual steps within the script are commented in the code (see "run_analysis"). In short it
(1) merges the training and the test sets to create one data set
(2) appropriately labels the data set with descriptive variable names,
(3) extracts only the measurements on the mean and standard deviation for each measurement,
(4) uses descriptive activity names to name the activities in the data set, and
(5) creates a new, independent tidy data set with the average of each variable for each activity and each subject
that will be stored as "tidyDataS.txt" to your working directory.

