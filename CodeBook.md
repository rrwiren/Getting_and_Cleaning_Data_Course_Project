## Description of Codebook.md

This code book describes the variables, the data, and any transformations or work that performed to clean up the data as well as any other relevant information.

The script **run_analyis.R** performs five steps according to the instructions for this assignment as listed in README.md

The input data is found in this zipped [input file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The outcome is a file called **average_data.txt**.


### Content descriptions for the two main files 

**average_data.txt** contains average measures for 30 subjects and 6 activity types stored in 180 rows.

There are 68 columns, first column is the subject, 2nd is the activity, columns 2 to 68 contains the features with either *mean()* or *std()* included as part of their names. There is a description included for the features in the input data.

**run_analyis.R** includes the following 13 variables:

* *x_train*, 
* *y_train*, 
* *x_test*, 
* *y_test*, 
* *subject_train* and
* *subject_test* 

contains dataset from the downloaded input files.

* *x_data*, 
* *y_data* and
* *subject_data* 

combines the datasets.

* *features* containes the descriptive names.

* *mean_and_std_features* extracts only the features with either mean() OR std() in their names.

* *combined_data* combines *x_data*, *y_data* and *subject_data*

The variable *average_data* contains the relevant averages that are stored in the **average_data.txt* output file.

The **run_analyis.R** script also includes descriptions for each step embedded in the file.  

----------------------------------------------------

### Tidy Data according to article by Hadley Wickham

*Tidy data is a standard way of mapping the meaning of a dataset to its structure. A dataset is
messy or tidy depending on how rows, columns and tables are matched up with observations,
variables and types. In* **tidy data**:

1. Each variable forms a column.
1. Each observation forms a row.
1. Each type of observational unit forms a table.

[Link to article](http://vita.had.co.nz/papers/tidy-data.pdf)

