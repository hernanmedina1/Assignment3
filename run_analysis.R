# run_analysis.R
# Hernan L. Medina, July 2016
#
# Set working directory
#
setwd("D:/OneDrive/Documents/Coursera/GettingAndCleaningData")
#
# Read feature names and activity labels files
#
features <- read.table("./UCI HAR Dataset/features.txt",  
                       stringsAsFactors = FALSE, 
                       header = FALSE,
                       col.names = c("row_name", "feature_name"),
                       row.names = "row_name")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",  
                       stringsAsFactors = FALSE, 
                       header = FALSE,
                       col.names = c("activity", "activity_name"))
# 
# transform feature names for easier selection later on
# by specifiying which variables will not bge included
# also make feature names more descriptive
# 
f <- gsub("-", "_", features$feature_name)
f <- gsub('mad\\()', 'mad_not_included', f)
f <- gsub('max\\()', 'max_not_included', f)
f <- gsub('min\\()', 'min_not_included', f)
f <- gsub('sma\\()', 'sma_not_included', f)
f <- gsub('energy\\()', 'energy_not_included', f)
f <- gsub('iqr\\()', 'iqr_not_included', f)
f <- gsub('entropy\\()', 'entropy_not_included', f)
f <- gsub('arCoeff\\()', 'arCoeff_not_included', f)
f <- gsub('correlation\\()', 'correlation_not_included', f)
f <- gsub('maxInds\\()', 'maxInds_not_included', f)
f <- gsub('maxInds', 'maxInds_not_included', f)
f <- gsub('Freq\\()', 'Freq_not_included', f)
f <- gsub('skewness\\()', 'skewness_not_included', f)
f <- gsub('kurtosis\\()', 'kurtosis_not_included', f)
f <- gsub('bandsEnergy\\()', 'bandsEnergy_not_included', f)
f <- gsub('angle\\(', 'angle_not_included', f)
f <- gsub('mean\\()', 'mean', f)
f <- gsub('std\\()', 'std', f)
f <- sub('^t', 'time_', f)
f <- sub('^f', 'frequency_', f)
f <- sub('BodyAcc', 'body_acceleration', f)
f <- sub('BodyGyro', 'body_angular_velocity', f)
f <- sub('Bodybody', 'body_body', f)
f <- sub('GravityAcc', 'gravity_acceleration', f)
f <- sub('Jerk', '_jerk', f)
f <- sub('Mag', '_magnitude', f)
f <- gsub("\\,", "_", f)
f <- tolower(f)
features$clean <- f
#fdf <- as.data.frame(features$feature_name)
#fdf$clean <- f
#write.csv(fdf,'feature_list.csv')
#
# Define function for reading training and test data samples and return tables
#
library(dplyr)
read_files <- function(data_sample) {
      data_path <- paste('./UCI HAR Dataset/',data_sample,'/', sep='')
      subject_file <- paste(data_path, 'subject_', data_sample, '.txt', sep='')
      activity_file <- paste(data_path, 'y_', data_sample, '.txt', sep='')
      feature_file <- paste(data_path, 'X_', data_sample, '.txt', sep='')
      subjects <- read.table(subject_file,  
                             header = FALSE,
                             col.names = 'subject')
      activities <- read.table(activity_file,  
                               header = FALSE,
                               col.names = 'activity')
      feature_data <- read.table(feature_file,  
                                 header = FALSE,
                                 col.names = features$clean)
      feature_data$activity <- activities$activity
      feature_data$subject <- subjects$subject
      tbl_df(feature_data)
}
#
# Read training and test data
#
training_data <- read_files('train')
test_data <- read_files('test')
#
# combine training and test data into one table with activity names
# output dimensions to be able to check evertything went all right
#
print('training data dimensions')
print(dim(training_data))
print('test data dimensions')
print(dim(test_data))
activity_data <- union(training_data, test_data)
print('combined data dimensions')
print(dim(activity_data))
activity_data <- inner_join(activity_data, activity_labels, by='activity')
print('dimensions after adding activity labels column')
print(dim(activity_data))
#
# select mean and standard deviation variables from combined data 
# and remove objects no longer needed
#
activity_measures <- select(activity_data, -contains('not_included'))
print('dimensions after selecting mean and std variables')
print(dim(activity_measures))
#
# create tidy data set with average of each variable
# for each activity and each subject
#
activity_groups <- group_by(activity_measures, activity, activity_name, subject)
mean_by_activity_and_subject <- summarize_all(activity_groups, mean)