## Description of Codebook.md

This code book describes the variables, the data, and any transformations or work that performed to clean up the data as well as any other relevant information.

The script **run_analyis.R** performs five steps according to the instructions for this assignment as listed in README.md

The input data is found in this zipped [input file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The outcome is a file called **average_data.txt**.


### General description of the content in the files 

**average_data.txt* contains average measures for 30 subjects and 6 activity types stored in 180 rows.

There are 68 columns, first column is the subject, 2nd is the activity, columns 2 to 68 are the measured mean() and std() values (features).

**run_analyis.R** includes the following 13 variables:

*x_train*, 
*y_train*, 
*x_test*, 
*y_test*, 
*subject_train* and
*subject_test* 
containing data from the downloaded input files.

*x_data*, 
*y_data* and
*subject_data* 
combining the datasets.

*features* containing the right names/labels.

*mean_and_std_features*, for extracting only mean() OR std()

*combined_data* combining 
*x_data*, 
*y_data* and 
*subject_data*

The variable *average_data* contains the relevant averages that are stored in the **average_data.txt* output file. 

