# Getting and Cleaning Data Project

This project uses the Human Activity Recognition Using Smartphones Dataset.

## Description

The purpose of this project is to collect, clean, and summarize the Samsung smartphone activity data.

## Analysis

The `run_analysis.R` script performs the following steps:

1. Reads the training and test datasets.
2. Merges the training and test data into one dataset.
3. Extracts only measurements related to the mean and standard deviation.
4. Uses descriptive activity names instead of activity IDs.
5. Gives the variables descriptive names.
6. Creates a second tidy dataset containing the average of each measurement for each subject and each activity.
7. Saves the final tidy dataset as `tidy_data.txt`.

## Files

- `run_analysis.R` - R script that performs the complete analysis.
- `tidy_data.txt` - Final tidy dataset.
- `CodeBook.md` - Describes the variables and transformations.

## How to Run

1. Place the `UCI HAR Dataset` folder in the working directory.
2. Make sure `run_analysis.R` is in the main working directory.
3. Run `run_analysis.R`.
4. The script creates `tidy_data.txt`.

## Output

The final tidy dataset contains 180 rows and 68 columns.
