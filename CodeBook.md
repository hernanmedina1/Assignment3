# Data set name: mean_by_activity_and_subject
Contains averages of observed variables for 6 activities and 30 subjects from the following source:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity 
Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine 

# Transformations applied to original data
The authors provided the data split into two samples: training and test. Each of these was further split into 
three tables, a subject table containing the subject id for each of the observations, an activity table containing
activity numbers for each of the observations, and a table of observations. Furthermore, the authors referenced abnove 
provided a table relating activity numbers to activity names, as shown above. 

To create this data set, the original three training tables were joined into one table with activity number, subject id,
as well as the variables derived by the original authors. The test data set was processed similarly, and the union of the 
two datasets was performed to create a table with all data data. This table consisted of 10,299 observations. This table 
contained 561 measures including means, standard deviations, interquartile ranges, frequencies, and so on. For this data 
set only the fixed variabls, means and standard deviations were kept. The activity names were appended to the data as well,
resulting in a data set with 3 fixed variables and 66 measures. The selected measure (meand and standard deviation) were 
then averaged by activity and subject resulting on a final table with 180 observations (6 activities x 30 subjects).

# Fixed variables describing experimental design 
activity = integer from 1 to 6 indicating type of activity
activity_name = character labels corresponding to the activity codes.
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING
subject = integer from 1 to 30 identifying a person participating in the study

# Averages calculated from original mean and standard deviation measure variables

## Time domain variables
time_body_acceleration_mean_x = time domain mean of body acceleration along x axis
time_body_acceleration_mean_y = time domain mean of body acceleration along y axis
time_body_acceleration_mean_z = time domain mean of body acceleration along z axis
time_body_acceleration_std_x = time domain average standard deviation of body acceleration along x axis
time_body_acceleration_std_y = time domain average standard deviation of body acceleration along y axis
time_body_acceleration_std_z = time domain average standard deviation of body acceleration along z axis
time_gravity_acceleration_mean_x = time domain mean of gravity acceleration along x axis
time_gravity_acceleration_mean_y = time domain mean of gravity acceleration along y axis
time_gravity_acceleration_mean_z = time domain mean of gravity acceleration along z axis
time_gravity_acceleration_std_x = time domain average standard deviation of gravity acceleration along x axis
time_gravity_acceleration_std_y = time domain average standard deviation of gravity acceleration along y axis
time_gravity_acceleration_std_z = time domain average standard deviation of gravity acceleration along z axis
time_body_acceleration_jerk_mean_x = time domain mean of body acceleration jerk along x axis
time_body_acceleration_jerk_mean_y = time domain mean of body acceleration jerk along y axis
time_body_acceleration_jerk_mean_z = time domain mean of body acceleration jerk along z axis
time_body_acceleration_jerk_std_x = time domain average standard deviation of body acceleration jerk along x axis
time_body_acceleration_jerk_std_y = time domain average standard deviation of body acceleration jerk along y axis
time_body_acceleration_jerk_std_z = time domain average standard deviation of body acceleration jerk along z axis
time_body_angular_velocity_mean_x = time domain mean of body angular velocity along x axis
time_body_angular_velocity_mean_y = time domain mean of body angular velocity along y axis
time_body_angular_velocity_mean_z = time domain mean of body angular velocity along z axis
time_body_angular_velocity_std_x = time domain average standard deviation of body angular velocity along x axis
time_body_angular_velocity_std_y = time domain average standard deviation of body angular velocity along y axis
time_body_angular_velocity_std_z = time domain average standard deviation of body angular velocity along z axis
time_body_angular_velocity_jerk_mean_x = time domain mean of body angular velocity jerk along x axis
time_body_angular_velocity_jerk_mean_y = time domain mean of body angular velocity jerk along y axis
time_body_angular_velocity_jerk_mean_z = time domain mean of body angular velocity jerk along z axis
time_body_angular_velocity_jerk_std_x = time domain average standard deviation of body angular velocity jerk along x axis
time_body_angular_velocity_jerk_std_y = time domain average standard deviation of body angular velocity jerk along y axis
time_body_angular_velocity_jerk_std_z = time domain average standard deviation of body angular velocity jerk along z axis
time_body_acceleration_magnitude_mean = mean Euclidean norm of time domain body acceleration
time_body_acceleration_magnitude_std = average standard deviation of Euclidean norm of time domain body acceleration
time_gravity_acceleration_magnitude_mean = mean Euclidean norm of time domain gravity acceleration
time_gravity_acceleration_magnitude_std = average standard deviation of Euclidean norm of time domain gravity acceleration
time_body_acceleration_jerk_magnitude_mean = mean Euclidean norm of time domain body acceleration jerk
time_body_acceleration_jerk_magnitude_std = average standard deviation of Euclidean norm of time domain body acceleration jerk
time_body_angular_velocity_magnitude_mean = mean Euclidean norm of time domain angular velocity
time_body_angular_velocity_magnitude_std = average standard deviation of Euclidean norm of time domain angular velocity
time_body_angular_velocity_jerk_magnitude_mean = mean Euclidean norm of time domain angular velocity jerk
time_body_angular_velocity_jerk_magnitude_std = average standard deviation of Euclidean norm of time domain angular velocity jerk

## Frequency domain variables
frequency_body_acceleration_mean_x = frequency domain mean of body acceleration along x axis
frequency_body_acceleration_mean_y = frequency domain mean of body acceleration along y axis
frequency_body_acceleration_mean_z = frequency domain mean of body acceleration along z axis
frequency_body_acceleration_std_x = frequency domain average standard deviation of body acceleration along x axis
frequency_body_acceleration_std_y = frequency domain average standard deviation of body acceleration along y axis
frequency_body_acceleration_std_z = frequency domain average standard deviation of body acceleration along z axis
frequency_body_acceleration_jerk_mean_x = frequency domain mean of body acceleration jerk along x axis
frequency_body_acceleration_jerk_mean_y = frequency domain mean of body acceleration jerk along y axis
frequency_body_acceleration_jerk_mean_z = frequency domain mean of body acceleration jerk along z axis
frequency_body_acceleration_jerk_std_x = frequency domain average standard deviation of body acceleration jerk along x axis
frequency_body_acceleration_jerk_std_y = frequency domain average standard deviation of body acceleration jerk along y axis
frequency_body_acceleration_jerk_std_z = frequency domain average standard deviation of body acceleration jerk along z axis
frequency_body_angular_velocity_mean_x = frequency domain mean ofbody angular velocity along x axis
frequency_body_angular_velocity_mean_y = frequency domain mean ofbody angular velocity along y axis
frequency_body_angular_velocity_mean_z = frequency domain mean ofbody angular velocity along z axis
frequency_body_angular_velocity_std_x = frequency domain average standard deviation ofbody angular velocity along x axis
frequency_body_angular_velocity_std_y = frequency domain average standard deviation ofbody angular velocity along y axis
frequency_body_angular_velocity_std_z = frequency domain average standard deviation ofbody angular velocity along z axis
frequency_body_acceleration_magnitude_mean = mean Euclidean norm of frequency domain body acceleration
frequency_body_acceleration_magnitude_std = average standard deviation of Euclidean norm of frequency domain body acceleration
frequency_body_body_acceleration_jerk_magnitude_mean = mean Euclidean norm of frequency domain body acceleration  jerk
frequency_body_body_acceleration_jerk_magnitude_std = average standard deviation of Euclidean norm of frequency domain body acceleration  jerk
frequency_body_body_angular_velocity_magnitude_mean = mean Euclidean norm of time domain body angular velocity
frequency_body_body_angular_velocity_magnitude_std = average standard deviation of Euclidean norm of time domain body angular velocity
frequency_body_body_angular_velocity_jerk_magnitude_mean = mean Euclidean norm of time domain body angular velocity jerk
frequency_body_body_angular_velocity_jerk_magnitude_std = average standard deviation of Euclidean norm of time domain body angular velocity jerk
