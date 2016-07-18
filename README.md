# Assignment3
## Getting and Cleaning Data  
This repo contains a script called run_analysis.R   
The objective of this script is to compute averages by activity and subject for mean and standard deviation measures 
created by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset 
for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational 
Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  

The run_analysis.R script first reads a table of features describing the measures in the file. It also reads the labels 
describing the activity codes. Next, the script makes the feature names more descriptive to use them as variable names, 
flagging features that will not be used by inserting 'not_included' in the feature name. The names of these features were 
long, thus  the script inserts underscordes between words in order to make the feature names more readable.

Since the original data were divided into training and test samples, the script uses a function to read the files. 
This function takes a parameter that indicates whether the files to be read are from the train set or the test set. 
The original data has separate tables for activity, subject and features, fhe function joins the activity number, subject 
id and measures into one data frame, and then returns a table by using the dplyr tlb_df function to convert the data frame
to a table. 

The scipt performs the union of the tables containing training and test data, printing dimensions before and after each 
data manipluation in order to verify that the data manipulations result in the expected number of observations and variables. 
Next the script selects the variables fied by the experiment design (activity and subject), as well as the mean and standard 
deviation measures, by using the dplyr select function to exclude variables with 'not_included' in their name. Subsequently the 
script uses the dplyr group_by function to define groups by activity and subject, and then the summary_all function to
calculate the average of all measures kept.
