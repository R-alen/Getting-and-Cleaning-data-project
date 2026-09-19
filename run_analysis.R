data_path <- "UCI HAR Dataset"
list.files(data_path)

X_train <- read.table(file.path(data_path, "train", "X_train.txt"))
X_test <- read.table(file.path(data_path, "test", "X_test.txt"))

subject_train <- read.table(file.path(data_path, "train", "subject_train.txt"))
subject_test <- read.table(file.path(data_path, "test", "subject_test.txt"))

y_train <- read.table(file.path(data_path, "train", "y_train.txt"))
y_test <- read.table(file.path(data_path, "test", "y_test.txt"))


# Merge training and test measurements
X_data <- rbind(X_train, X_test)

# Merge subject IDs
subject_data <- rbind(subject_train, subject_test)

# Merge activity IDs
y_data <- rbind(y_train, y_test)

# Read feature names
features <- read.table(
  file.path(data_path, "features.txt"),
  stringsAsFactors = FALSE
)
  
# Find mean and standard deviation columns
selected_columns <- grep("mean\\(\\)|std\\(\\)", features$V2)

# Keep only mean and standard deviation measurements
X_selected <- X_data[, selected_columns]

# Read activity labels
activity_labels <- read.table(
  file.path(data_path, "activity_labels.txt"),
  stringsAsFactors = FALSE
)

# Replace activity IDs with descriptive names
activity_names <- activity_labels$V2[y_data$V1]

# Combine subject, activity, and selected measurements
data <- cbind(
  subject_data,
  activity_names,
  X_selected
)

# Create descriptive column names
names(data) <- c(
  "subject",
  "activity",
  features$V2[selected_columns]
)

# Calculate the average of each measurement
# for each subject and activity
tidy_data <- aggregate(
  data[, 3:68],
  by = list(
    subject = data$subject,
    activity = data$activity
  ),
  FUN = mean
)

names(tidy_data)[1:2] <- c("subject", "activity")

write.table(
  tidy_data,
  "tidy_data.txt",
  row.names = FALSE
)
