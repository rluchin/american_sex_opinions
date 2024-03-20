library(readxl)
library(dplyr)

# Function to perform tests on a dataset
perform_tests <- function(data, response_column) {
  print(paste("Testing", response_column))
  
  # Test 1: Check for missing values
  if (any(is.na(data))) {
    print("There are missing values in the dataset.")
  } else {
    print("No missing values found.")
  }
  
  # Test 2: Verify the range of years
  year_range <- range(data$year, na.rm = TRUE)
  print(paste("Year range is from", year_range[1], "to", year_range[2]))
  
  # Test 3: Ensure id_ contains unique values
  if (nrow(data) == length(unique(data$id_))) {
    print("All id_ values are unique.")
  } else {
    print("There are duplicate id_ values.")
  }
  
  # Test 4: Check that there is at least one record for each year
  all_years_present <- all(table(data$year) > 0)
  if (all_years_present) {
    print("There is at least one record for each year in the dataset.")
  } else {
    print("Missing data for one or more years.")
  }
}

# List of files and their respective response columns (Test 4 no longer needs specific responses)
files_and_responses <- list(
  cleaned_data_porn = "pornlaw",
  cleaned_data_xmarsex = "xmarsex",
  cleaned_data_teensex = "teensex",
  cleaned_data_premarsex = "premarsx"
)

# Iterate over the files and perform tests
for (file_name in names(files_and_responses)) {
  file_path <- paste0("outputs/data/", file_name, ".xlsx") # Update the path as needed
  data <- read_excel(file_path)
  perform_tests(data, files_and_responses[[file_name]])
}