##README.md
##This tidy dataset includes the following columns
The data in this data set was compiled from the data
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

*activity - the activity during which the data was collected
*testsubject - the test subject that the data was collected on

All other columns are the means for each mean and standard deviation of all the 
data collected on each test subject.

The original text describing the variables from the archive is included here for reference:

"The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a 
corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in 
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using 
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

Full list of variables follows below:

*tbodyacc mean x
*tbodyacc mean y
*tbodyacc mean z

*tgravityacc mean x
*tgravityacc mean y
*tgravityacc mean z

*tbodyaccjerk mean x
*tbodyaccjerk mean y
*tbodyaccjerk mean z

*tbodygyro mean x
*tbodygyro mean y
*tbodygyro mean z

*tbodygyrojerk mean x
*tbodygyrojerk mean y
*tbodygyrojerk mean z

*tbodyaccmag mean
*tgravityaccmag mean
*tbodyaccjerkmag mean
*tbodygyromag mean
*tbodygyrojerkmag mean

Fast Fourier Transform Variables:

*fbodyacc mean x
*fbodyacc mean y
*fbodyacc mean z

*fbodyacc meanfreq x
*fbodyacc meanfreq y
*fbodyacc meanfreq z

*fbodyaccjerk mean x
*fbodyaccjerk mean y
*fbodyaccjerk mean z

*fbodyaccjerk meanfreq x
*fbodyaccjerk meanfreq y
*fbodyaccjerk meanfreq z


*fbodygyro mean x
*fbodygyro mean y
*fbodygyro mean z


*fbodygyro meanfreq x
*fbodygyro meanfreq y
*fbodygyro meanfreq z


*fbodyaccmag mean
*fbodyaccmag meanfreq
*fbodybodyaccjerkmag mean
*fbodybodyaccjerkmag meanfreq
*fbodybodygyromag mean
*fbodybodygyromag meanfreq
*fbodybodygyrojerkmag mean
*fbodybodygyrojerkmag meanfreq


*angle tbodyaccmean gravity
*angle tbodyaccjerkmean gravitymean
*angle tbodygyromean gravitymean
*angle tbodygyrojerkmean gravitymean


*angle x gravitymean
*angle y gravitymean
*angle z gravitymean



#Standard Deviation Variables

*tbodyacc std x
*tbodyacc std y
*tbodyacc std z

*tgravityacc std x
*tgravityacc std y
*tgravityacc std z

*tbodyaccjerk std x
*tbodyaccjerk std y
*tbodyaccjerk std z

*tbodygyro std x
*tbodygyro std y
*tbodygyro std z

*tbodygyrojerk std x
*tbodygyrojerk std y
*tbodygyrojerk std z

*tbodyaccmag std
*tgravityaccmag std
*tbodyaccjerkmag std
*tbodygyromag std
*tbodygyrojerkmag std


#Fast Fourier Transform Standard Deviations:

*fbodyacc std x
*fbodyacc std y
*fbodyacc std z

*fbodyaccjerk std x
*fbodyaccjerk std y
*fbodyaccjerk std z

*fbodygyro std x
*fbodygyro std y
*fbodygyro std z

*fbodyaccmag std
*fbodybodyaccjerkmag std
*fbodybodygyromag std
*fbodybodygyrojerkmag std
