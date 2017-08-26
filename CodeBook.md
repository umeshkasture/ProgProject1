CodeBook.md
The data is captured from  the accelerometer and gyroscope of cell phone of some people.
Activity they were performing at the time of capture was manually recorded.
It is available for download at : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Details of the data variables can be found in file "UHI HAR Dataset/feature_intro.txt"
Information on the experiment is depicted in file "UHI HAR Dataset/README.txt"

Filtered database contains : Suject Identifier ; Type of activity taken ; and Mean OR Standard Deviation data of Sensor Reading

1	subject : Integer : Subject Identifier 
2	ActivityName : factor : 6 activities for which observations were obtained

Readings of Sensors "Sensor Function" "Mean/Std Deviation" "Sensor Orientation" Seperated by "_"
3	tBodyAcc_mean_X
4	tBodyAcc_mean_Y
5	tBodyAcc_mean_Z
6	tBodyAcc_std_X
7	tBodyAcc_std_Y
8	tBodyAcc_std_Z
9	tGravityAcc_mean_X
10	tGravityAcc_mean_Y
11	tGravityAcc_mean_Z
12	tGravityAcc_std_X
13	tGravityAcc_std_Y
14	tGravityAcc_std_Z
15	tBodyAccJerk_mean_X
16	tBodyAccJerk_mean_Y
17	tBodyAccJerk_mean_Z
18	tBodyAccJerk_std_X
19	tBodyAccJerk_std_Y
20	tBodyAccJerk_std_Z
21	tBodyGyro_mean_X
22	tBodyGyro_mean_Y
23	tBodyGyro_mean_Z
24	tBodyGyro_std_X
25	tBodyGyro_std_Y
26	tBodyGyro_std_Z
27	tBodyGyroJerk_mean_X
28	tBodyGyroJerk_mean_Y
29	tBodyGyroJerk_mean_Z
30	tBodyGyroJerk_std_X
31	tBodyGyroJerk_std_Y
32	tBodyGyroJerk_std_Z
33	tBodyAccMag_mean_
34	tBodyAccMag_std_
35	tGravityAccMag_mean_
36	tGravityAccMag_std_
37	tBodyAccJerkMag_mean_
38	tBodyAccJerkMag_std_
39	tBodyGyroMag_mean_
40	tBodyGyroMag_std_
41	tBodyGyroJerkMag_mean_
42	tBodyGyroJerkMag_std_
43	fBodyAcc_mean_X
44	fBodyAcc_mean_Y
45	fBodyAcc_mean_Z
46	fBodyAcc_std_X
47	fBodyAcc_std_Y
48	fBodyAcc_std_Z
49	fBodyAcc_meanFreq_X
50	fBodyAcc_meanFreq_Y
51	fBodyAcc_meanFreq_Z
52	fBodyAccJerk_mean_X
53	fBodyAccJerk_mean_Y
54	fBodyAccJerk_mean_Z
55	fBodyAccJerk_std_X
56	fBodyAccJerk_std_Y
57	fBodyAccJerk_std_Z
58	fBodyAccJerk_meanFreq_X
59	fBodyAccJerk_meanFreq_Y
60	fBodyAccJerk_meanFreq_Z
61	fBodyGyro_mean_X
62	fBodyGyro_mean_Y
63	fBodyGyro_mean_Z
64	fBodyGyro_std_X
65	fBodyGyro_std_Y
66	fBodyGyro_std_Z
67	fBodyGyro_meanFreq_X
68	fBodyGyro_meanFreq_Y
69	fBodyGyro_meanFreq_Z
70	fBodyAccMag_mean_
71	fBodyAccMag_std_
72	fBodyAccMag_meanFreq_
73	fBodyBodyAccJerkMag_mean_
74	fBodyBodyAccJerkMag_std_
75	fBodyBodyAccJerkMag_meanFreq_
76	fBodyBodyGyroMag_mean_
77	fBodyBodyGyroMag_std_
78	fBodyBodyGyroMag_meanFreq_
79	fBodyBodyGyroJerkMag_mean_
80	fBodyBodyGyroJerkMag_std_
81	fBodyBodyGyroJerkMag_meanFreq_
