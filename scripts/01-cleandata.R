#Clean Data - premarsx

# Load the data
data <- read_excel("inputs/data/raw_data_premarsex.xlsx")

# Clean and organize the data
cleaned_data_premarsex <- data %>%
  group_by(year, premarsx) %>%
  summarise(count = n()) %>%
  arrange(year, premarsx)

# Remove "Inapplicable" Respondants
cleaned_data_premarsex <- cleaned_data_premarsex %>%
  filter(premarsx != ".i:  Inapplicable")

# Display the cleaned data
print(cleaned_data_premarsex)

# Write the cleaned data to a new Excel file
write.xlsx(cleaned_data_premarsex, "outputs/data/cleaned_data_premarsex.xlsx")

#Clean Data - porn

# Load the data
data <- read_excel("inputs/data/raw_data_porn.xlsx")

# Clean and organize the data
cleaned_data_porn <- data %>%
  group_by(year, pornlaw) %>%
  summarise(count = n(), .groups = 'drop') %>%
  arrange(year, pornlaw)

# Remove "Inapplicable" Respondants
cleaned_data_porn <- cleaned_data_porn %>%
  filter(pornlaw != ".i:  Inapplicable")

# Display the cleaned data to confirm the removal
print(cleaned_data_porn)

# Write the cleaned and filtered data to a new Excel file
write.xlsx(cleaned_data_porn, "outputs/data/cleaned_data_porn.xlsx")


#Clean Data - teensex

# Load the data
data <- read_excel("inputs/data/raw_data_teensex.xlsx")

# Clean and organize the data
cleaned_data_teensex <- data %>%
  group_by(year, teensex) %>%
  summarise(count = n()) %>%
  arrange(year, teensex)

# Remove "Inapplicable" Respondants
cleaned_data_teensex <- cleaned_data_teensex %>%
  filter(teensex != ".i:  Inapplicable")

# Display the cleaned data
print(cleaned_data_teensex)

# Write the cleaned data to a new Excel file
write.xlsx(cleaned_data_teensex, "outputs/data/cleaned_data_teensex.xlsx")

#Clean Data - swingers

# Load the data
data <- read_excel("inputs/data/raw_data_xmarsex.xlsx")

# Clean and organize the data
cleaned_data_xmarsex <- data %>%
  group_by(year, xmarsex) %>%
  summarise(count = n()) %>%
  arrange(year, xmarsex)

# Remove "Inapplicable" Respondants
cleaned_data_xmarsex <- cleaned_data_xmarsex %>%
  filter(xmarsex != ".i:  Inapplicable")

# Display the cleaned data
print(cleaned_data_xmarsex)

# Write the cleaned data to a new Excel file
write.xlsx(cleaned_data_xmarsex, "outputs/data/cleaned_data_xmarsex.xlsx")