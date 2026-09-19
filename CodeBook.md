# Code Book

## Description

This code book describes the variables and transformations used in the Getting and Cleaning Data project.

The data comes from the Human Activity Recognition Using Smartphones Dataset.

## Variables

### subject

The ID of the person who performed the activity.

There are 30 subjects in the original dataset.

### activity

The activity performed by the subject.

The activity names are:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Measurement variables

The remaining 66 variables are measurements selected from the original dataset. They contain measurements related to the mean and standard deviation of the original features.

## Data Transformation

The following steps were performed:

1. The training and test datasets were merged into one dataset.
2. The subject IDs from the training and test datasets were merged.
3. The activity IDs from the training and test datasets were merged.
4. Only measurements containing `mean()` or `std()` were selected.
5. Activity IDs were replaced with descriptive activity names.
6. The variables were given descriptive names.
7. A second tidy dataset was created by calculating the average of each measurement for each subject and each activity.

## Final Dataset

The final tidy dataset contains:

- 180 observations (rows)
- 68 variables (columns)
- 30 subjects
- 6 activities
