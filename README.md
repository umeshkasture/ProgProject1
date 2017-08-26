README.md
Data Cleaning Steps
1. Data is present in 2 set of directories "Train" and "Test" As per description of the data. 
These are identical data sets seperated for training the machine learning algo and testing 
the algorythm.
2. Each directory contains 3 files X_????.txt y_????.txt and subject_????.txt each with same number of rows
3. X_????.txt files contain sensor data. Variables are mentioned in features.txt. 
	We don't rush in to load features.txt and rename columns. There are duplicate variable names.
4. y_????.txt file contains activity index described in activity_label.txt
5. subject_????.txt file contains subject of experimented referred by index number.
6. We need to rename y_???? and subject_???? columns before merge to avoid replication of name "V1"
7. Performing cbind on these tables will form 2 tables one for "test" and another for "train"
8. Performing rbind on the two tables will provide us single merged table of all observations.
9. grep operation on feature names list will generate index of columns of our interest. Use this index vector for select operation.
10. Now we can add new column of activity names by joining our final merged table with activity names table on activity index.
	This will give activity in human readable format. Depending on initial load of activity table it can be character or factor
11. We will prepare feature names array for labeling it as column names by replacing "symbols, spaces etc" with single "_"
12. Replace the generic column names for sensor data with modified feature names (now there are no duplicates :) )
13. rearrange the columns and also drop the activity index since you have activity name as column.
14. Use group_by to prepare data for summarization across multiple observatons of same activity for given subject(will use mean funtion in this case)
15. It would be good idea to write out the data as csv file.
