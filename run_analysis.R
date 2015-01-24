run_analysis <- function (){
        ##step 1: create a large dataframe with all necessary data
        #read the files from directory
        train <- read.table("../UCI HAR Dataset/train/X_train.txt")
        test <- read.table("../UCI HAR Dataset/test/X_test.txt")
        #combine those two dataframes
        train.test <- rbind(train, test)
        #prepare descriptive column names: first extract names from "features.txt"
        cnames <- as.character(read.table("../UCI HAR Dataset/features.txt")[1:561, 2])
        #rename them to make them more descriptive
        cnames <- sub("tBodyAcc", "TimeBodyAcceleration", cnames)
        cnames <- sub("tBodyGyro", "TimeBodyGyroscope", cnames)
        cnames <- sub("tGravityAcc", "TimeGravityAcceleration", cnames)
        cnames <- sub("fBodyBody", "fBody", cnames)
        cnames <- sub("fBodyAcc", "FrequenceBodyAcceleration", cnames)
        cnames <- sub("fBodyGyro", "FrequenceBodyGyroscope", cnames)
        cnames <- sub("angle", "Angle", cnames)
        cnames <- sub("Mag", "Magnitude", cnames)
        cnames <- sub("gravity", "Gravity", cnames)
        cnames <- sub("()", "", cnames, fixed = TRUE)
        cnames <- sub("),", ",", cnames)
        cnames <- gsub("-", "_", cnames)
        #make them column names of new big dataset "train.test"
        colnames(train.test) <- make.names(cnames, unique=TRUE)
        rm(test, train)
        ##step 2: extract only mean and standard deviation measurements to new data frame
        #look for "mean" and "std" in column names and create new vetor
        tidyval1 <- grep("mean", colnames(train.test))
        tidyval2 <- grep("std", colnames(train.test))
        #prepare to remove "meanFreq" as well as "GravityMean"
        tidyval3 <- grep("meanFreq", colnames(train.test))
        tidyval4 <- grep("GravityMean", colnames(train.test))
        #put them together, sort them, and remove unnecessary values
        #supress warning due to different object lengths
        tidyval <- sort(as.numeric(c(tidyval1, tidyval2)))
        suppressWarnings(tidyval <- tidyval[! tidyval %in% tidyval3 & tidyval4])
        #extract columns by vector "tidyval"
        tidyData <- train.test[, tidyval]
        rm(train.test)#to save work space
        ##step 3: expand by "Subject" and "Activity" columns
        Subject1 <- read.table("../UCI HAR Dataset/train/subject_train.txt")[,1]
        Subject2 <- read.table("../UCI HAR Dataset/test/subject_test.txt")[,1]
        tidyData$Subject <- c(Subject1, Subject2)
        Activity1 <- read.table("../UCI HAR Dataset/train/y_train.txt")[,1]
        Activity2 <- read.table("../UCI HAR Dataset/test/y_test.txt")[,1]
        tidyData$Activity <- c(Activity1, Activity2)
        ##step 4: label the decoded activities as given in "activity_labels.txt" in working dir
        tidyData$Activity[tidyData$Activity == 1] = "walking"
        tidyData$Activity[tidyData$Activity == 2] = "walking_upstairs"
        tidyData$Activity[tidyData$Activity == 3] = "walking_downstairs"
        tidyData$Activity[tidyData$Activity == 4] = "sitting"
        tidyData$Activity[tidyData$Activity == 5] = "standing"
        tidyData$Activity[tidyData$Activity == 6] = "laying"
        ##step 5: create a new independent data frame with the average of each 
        #variable for each "Activity" and each "Subject"
        toCalculate <- c(colnames(tidyData)[1:66])
        groupColumns <- c("Activity", "Subject")
        library(plyr)
        tidyDataS <- ddply(tidyData, groupColumns, function(x) colMeans(x[toCalculate]))
        #create a txt file and save it to the working directory
        write.table(tidyDataS, file="../UCI HAR Dataset/tidyDataS.txt", row.names=FALSE)
}