



# STEP 1. Install and Load the Required Packages ----
# The following packages can be installed and loaded before proceeding to the
# subsequent steps.

## dplyr - For data manipulation ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("dplyr")

## ggplot2 - For data visualizations using the Grammar for Graphics package ----
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggplot2")

## ggrepel - Additional options for the Grammar for Graphics package ----
if (!is.element("ggrepel", installed.packages()[, 1])) {
  install.packages("ggrepel", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggrepel")

## ggraph - Additional options for the Grammar for Graphics package ----
if (!is.element("ggraph", installed.packages()[, 1])) {
  install.packages("ggraph", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggraph")

## tidytext - For text mining ----
if (!is.element("tidytext", installed.packages()[, 1])) {
  install.packages("tidytext", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("tidytext")

## tidyr - To tidy messy data ----
if (!is.element("tidyr", installed.packages()[, 1])) {
  install.packages("tidyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("tidyr")

## widyr - To widen, process, and re-tidy a dataset ----
if (!is.element("widyr", installed.packages()[, 1])) {
  install.packages("widyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("widyr")

## gridExtra - to arrange multiple grid-based plots on a page ----
if (!is.element("gridExtra", installed.packages()[, 1])) {
  install.packages("gridExtra", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("gridExtra")

## knitr - for dynamic report generation ----
if (!is.element("knitr", installed.packages()[, 1])) {
  install.packages("knitr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("knitr")

## kableExtra - for nicely formatted output tables ----
if (!is.element("kableExtra", installed.packages()[, 1])) {
  install.packages("kableExtra", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("kableExtra")

## formattable -  To create a formattable object ----
# A formattable object is an object to which a formatting function and related
# attributes are attached.
if (!is.element("formattable", installed.packages()[, 1])) {
  install.packages("formattable", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("formattable")

## circlize - To create a cord diagram or visualization ----
# by Gu et al. (2014)
if (!is.element("circlize", installed.packages()[, 1])) {
  install.packages("circlize", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("circlize")

## memery - For creating data analysis related memes ----
# The memery package generates internet memes that optionally include a
# superimposed inset plot and other atypical features, combining the visual
# impact of an attention-grabbing meme with graphic results of data analysis.
if (!is.element("memery", installed.packages()[, 1])) {
  install.packages("memery", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("memery")

## magick - For image processing in R ----
if (!is.element("magick", installed.packages()[, 1])) {
  install.packages("magick", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("magick")

## yarrr - To create a pirate plot ----
if (!is.element("yarrr", installed.packages()[, 1])) {
  install.packages("yarrr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("yarrr")

## radarchart - To create interactive radar charts using ChartJS ----
if (!is.element("radarchart", installed.packages()[, 1])) {
  install.packages("radarchart", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("radarchart")

## igraph - To create ngram network diagrams ----
if (!is.element("igraph", installed.packages()[, 1])) {
  install.packages("igraph", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("igraph")

## wordcloud2 - For creating wordcloud by using 'wordcloud2.JS ----
if (!is.element("wordcloud2", installed.packages()[, 1])) {
  install.packages("wordcloud2", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("wordcloud2")

## readr - Load datasets from CSV files ----
if (!is.element("readr", installed.packages()[, 1])) {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## e1071 ----
if (require("e1071")) {
  require("e1071")
} else {
  install.packages("e1071", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## factoextra ----
if (require("factoextra")) {
  require("factoextra")
} else {
  install.packages("factoextra", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## FactoMineR ----
if (require("FactoMineR")) {
  require("FactoMineR")
} else {
  install.packages("FactoMineR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}


require("readr")

# STEP 2. Customize the Visualizations, Tables, and Colour Scheme ----
# The following defines a blue-grey colour scheme for the visualizations:
## shades of blue and shades of grey
blue_grey_colours_11 <- c("#27408E", "#304FAF", "#536CB5", "#6981c7", "#8da0db",
                          "#dde5ec", "#c8c9ca", "#B9BCC2", "#A7AAAF", "#888A8E",
                          "#636569")

blue_grey_colours_6 <- c("#27408E", "#304FAF", "#536CB5",
                         "#B9BCC2", "#A7AAAF", "#888A8E")

blue_grey_colours_4 <- c("#27408E", "#536CB5",
                         "#B9BCC2", "#888A8E")

blue_grey_colours_3 <- c("#6981c7", "#304FAF", "#888A8E")

blue_grey_colours_2 <- c("#27408E",
                         "#888A8E")

blue_grey_colours_1 <- c("#6981c7")

# Custom theme for visualizations
blue_grey_theme <- function() {
  theme(
    axis.ticks = element_line(
      linewidth = 1, linetype = "dashed",
      lineend = NULL, color = "#dfdede",
      arrow = NULL, inherit.blank = FALSE),
    axis.text = element_text(
      face = "bold", color = "#3f3f41",
      size = 12, hjust = 0.5),
    axis.title = element_text(face = "bold", color = "#3f3f41",
                              size = 14, hjust = 0.5),
    plot.title = element_text(face = "bold", color = "#3f3f41",
                              size = 16, hjust = 0.5),
    panel.grid = element_line(
      linewidth = 0.1, linetype = "dashed",
      lineend = NULL, color = "#dfdede",
      arrow = NULL, inherit.blank = FALSE),
    panel.background = element_rect(fill = "#f3eeee"),
    legend.title = element_text(face = "plain", color = "#3f3f41",
                                size = 12, hjust = 0),
    legend.position = "right"
  )
}

# Customize the text tables for consistency using HTML formatting
kable_theme <- function(dat, caption) {
  kable(dat, "html", escape = FALSE, caption = caption) %>%
    kable_styling(bootstrap_options = c("striped", "condensed", "bordered"),
                  full_width = FALSE)
}

# STEP 3. Load the Dataset ----
student_performance_dataset <-
  readr::read_csv(
    "data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.CSV", # nolint
    col_types =
      readr::cols(
        class_group =
          readr::col_factor(levels = c("A", "B", "C")),
        gender = readr::col_factor(levels = c("1", "0")),
        YOB = readr::col_date(format = "%Y"),
        regret_choosing_bi =
          readr::col_factor(levels = c("1", "0")),
        drop_bi_now =
          readr::col_factor(levels = c("1", "0")),
        motivator =
          readr::col_factor(levels = c("1", "0")),
        read_content_before_lecture =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        anticipate_test_questions =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        answer_rhetorical_questions =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        find_terms_I_do_not_know =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        copy_new_terms_in_reading_notebook =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        take_quizzes_and_use_results =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        reorganise_course_outline =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        write_down_important_points =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        space_out_revision =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        studying_in_study_group =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        schedule_appointments =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        goal_oriented =
          readr::col_factor(levels =
                              c("1", "0")),
        spaced_repetition =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        testing_and_active_recall =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        interleaving =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        categorizing =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        retrospective_timetable =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        cornell_notes =
          readr::col_factor(levels =
                              c("1", "2", "3", "4")),
        sq3r = readr::col_factor(levels =
                                   c("1", "2", "3", "4")),
        commute = readr::col_factor(levels =
                                      c("1", "2",
                                        "3", "4")),
        study_time = readr::col_factor(levels =
                                         c("1", "2",
                                           "3", "4")),
        repeats_since_Y1 = readr::col_integer(),
        paid_tuition = readr::col_factor(levels =
                                           c("0", "1")),
        free_tuition = readr::col_factor(levels =
                                           c("0", "1")),
        extra_curricular = readr::col_factor(levels =
                                               c("0", "1")),
        sports_extra_curricular =
          readr::col_factor(levels = c("0", "1")),
        exercise_per_week = readr::col_factor(levels =
                                                c("0", "1",
                                                  "2",
                                                  "3")),
        meditate = readr::col_factor(levels =
                                       c("0", "1",
                                         "2", "3")),
        pray = readr::col_factor(levels =
                                   c("0", "1",
                                     "2", "3")),
        internet = readr::col_factor(levels =
                                       c("0", "1")),
        laptop = readr::col_factor(levels = c("0", "1")),
        family_relationships =
          readr::col_factor(levels =
                              c("1", "2", "3", "4", "5")),
        friendships = readr::col_factor(levels =
                                          c("1", "2", "3",
                                            "4", "5")),
        romantic_relationships =
          readr::col_factor(levels =
                              c("0", "1", "2", "3", "4")),
        spiritual_wellnes =
          readr::col_factor(levels = c("1", "2", "3",
                                       "4", "5")),
        financial_wellness =
          readr::col_factor(levels = c("1", "2", "3",
                                       "4", "5")),
        health = readr::col_factor(levels = c("1", "2",
                                              "3", "4",
                                              "5")),
        day_out = readr::col_factor(levels = c("0", "1",
                                               "2", "3")),
        night_out = readr::col_factor(levels = c("0",
                                                 "1", "2",
                                                 "3")),
        alcohol_or_narcotics =
          readr::col_factor(levels = c("0", "1", "2", "3")),
        mentor = readr::col_factor(levels = c("0", "1")),
        mentor_meetings = readr::col_factor(levels =
                                              c("0", "1",
                                                "2", "3")),
        `Attendance Waiver Granted: 1 = Yes, 0 = No` =
          readr::col_factor(levels = c("0", "1")),
        GRADE = readr::col_factor(levels =
                                    c("A", "B", "C", "D",
                                      "E"))),
    locale = readr::locale())

View(student_performance_dataset)

# Dimensions
dim(student_performance_dataset)

# Data Types
sapply(student_performance_dataset, class)
glimpse(student_performance_dataset)

# Summary of each variable
summary(student_performance_dataset)


## STEP 3. Apply a Scale Data Transform ----
# Data Types
sapply(student_performance_dataset, class)

# Select only numeric columns
numeric_columns <- sapply(student_performance_dataset, is.numeric)
numeric_data <- student_performance_dataset[, numeric_columns]

# Display summary of numeric data
summary(numeric_data)

# Apply scale data transform
model_of_the_transform <- preProcess(numeric_data, method = c("scale"))
print(model_of_the_transform)
student_performance_scale_transform <- predict(model_of_the_transform, numeric_data)

# AFTER
summary(student_performance_scale_transform)

# Extract numeric columns
numeric_columns <- sapply(student_performance_scale_transform, is.numeric)

# Create histograms for numeric columns
for (col in names(student_performance_scale_transform)[numeric_columns]) {
  # Exclude NA values
  col_data <- na.omit(student_performance_scale_transform[[col]])
  
  # Create histogram
  hist(col_data, main = col, xlab = col, col = "blue", border = "black", breaks = 20)
}



## STEP 4. Apply a Centre Data Transform ----
# Create a model for centering transformation
model_of_the_transform <- preProcess(student_performance_scale_transform[, numeric_columns], method = c("center"))

# Print the details of the transformation
print(model_of_the_transform)

# Apply centering transformation
student_performance_center_transform <- predict(model_of_the_transform, student_performance_scale_transform[, numeric_columns])

# Display summary statistics of the centered dataset
summary(student_performance_center_transform)

# Create boxplots for the centered numeric columns
for (col in names(student_performance_center_transform)) {
  boxplot(student_performance_center_transform[[col]], main = col)
}

# Standardize Data Transform ----
## STEP 5. Apply a Standardize Data Transform ----
# Create a model for standardization transformation
model_of_the_transform <- preProcess(student_performance_scale_transform[, numeric_columns], method = c("scale", "center"))

# Print the details of the transformation
print(model_of_the_transform)

# Apply standardization transformation
student_performance_standardize_transform <- predict(model_of_the_transform, student_performance_scale_transform[, numeric_columns])

# Display summary statistics of the standardized dataset
summary(student_performance_standardize_transform)

# Calculate and display standard deviations of the standardized numeric columns
sapply(student_performance_standardize_transform, sd)


## STEP 6. Apply a Normalize Data Transform ----
# Create a model for normalization transformation
model_of_the_transform <- preProcess(student_performance_scale_transform[, numeric_columns], method = c("range"))

# Print the details of the transformation
print(model_of_the_transform)

# Apply normalization transformation
student_performance_normalize_transform <- predict(model_of_the_transform, student_performance_scale_transform[, numeric_columns])

# Display summary statistics of the normalized dataset
summary(student_performance_normalize_transform)


## STEP 7. Apply a Box-Cox Power Transform ----
# Extract numeric columns
numeric_columns <- sapply(student_performance_box_cox_transform, is.numeric)

# Filter truly numeric columns
numeric_data <- student_performance_box_cox_transform[, numeric_columns]

# Calculate the skewness after the Box-Cox transform
sapply(numeric_data, skewness, type = 2)

# Plot histograms to view the skewness after the Box-Cox transform
for (i in colnames(numeric_data)) {
  hist(unlist(numeric_data[, i]), main = i)
}



# Convert tibble to numeric matrix
numeric_matrix <- as.matrix(student_performance_scale_transform[, numeric_columns])

# Create a model for the Box-Cox transform
model_of_the_transform <- preProcess(numeric_matrix, method = c("BoxCox"))

# Apply the Box-Cox transform
student_performance_box_cox_transform <- predict(model_of_the_transform, numeric_matrix)
# Display summary statistics of the dataset after Box-Cox transform
summary(student_performance_box_cox_transform)

# Function to check if a variable has enough variation
has_enough_variation <- function(x) {
  var <- var(x)
  return(var > 1e-6)  # You can adjust the threshold as needed
}

# Identify rows with complete cases
complete_rows <- complete.cases(student_performance_box_cox_transform)

# Use the logical vector to subset the data frame
student_performance_box_cox_no_na <- student_performance_box_cox_transform[complete_rows, ]

# Exclude variables with insufficient variation
selected_columns <- sapply(student_performance_box_cox_no_na, has_enough_variation)
student_performance_box_cox_filtered <- student_performance_box_cox_no_na[, selected_columns]

# Calculate skewness after the Box-Cox transform
skewness_values <- sapply(student_performance_box_cox_filtered, skewness, type = 2)


# Plot histograms to view the skewness after the Box-Cox transform
for (i in numeric_columns) {
  hist(student_performance_box_cox_transform[, i], main = names(student_performance_box_cox_transform)[i])
}

## STEP 8. Apply a Yeo-Johnson Power Transform ----

# Calculate the skewness before the Yeo-Johnson transform
sapply(student_performance_normalize_transform[, -4], skewness, type = 2)

# Plot histograms to view the skewness before the Yeo-Johnson transform
for (i in names(student_performance_normalize_transform)[numeric_columns]) {
  hist(student_performance_normalize_transform[, i], main = i)
}

# Create a model for the Yeo-Johnson transform
model_of_the_transform_yeo_johnson <- preProcess(student_performance_normalize_transform[, numeric_columns], method = c("YeoJohnson"))

# Apply the Yeo-Johnson transform
student_performance_yeo_johnson_transform <- predict(model_of_the_transform_yeo_johnson, student_performance_normalize_transform[, numeric_columns])

# Display summary statistics of the dataset after Yeo-Johnson transform
summary(student_performance_yeo_johnson_transform)

# Calculate the skewness after the Yeo-Johnson transform
sapply(student_performance_yeo_johnson_transform, skewness, type = 2)

# Plot histograms to view the skewness after the Yeo-Johnson transform
for (i in names(student_performance_yeo_johnson_transform)) {
  hist(student_performance_yeo_johnson_transform[[i]], main = i)
}

## STEP 9.a. PCA Linear Algebra Transform for Dimensionality Reduction ----
# Display summary of the student performance dataset
summary(student_performance_standardize_transform)

# Create a model for PCA transformation
model_of_the_transform_pca <- preProcess(student_performance_standardize_transform[, numeric_columns], method = c("scale", "center", "pca"))

# Print the details of the transformation
print(model_of_the_transform_pca)

# Apply PCA transformation
student_performance_pca_dr <- predict(model_of_the_transform_pca, student_performance_standardize_transform[, numeric_columns])

# Display summary statistics of the dataset after PCA
summary(student_performance_pca_dr)


## STEP 9.b. PCA Linear Algebra Transform for Feature Extraction ----
# Exclude rows with missing or infinite values
complete_rows <- complete.cases(student_performance_standardize_transform)
student_performance_no_na <- student_performance_standardize_transform[complete_rows, ]

# Compute the correlation matrix
cor_matrix <- cor(student_performance_no_na[, numeric_columns])

# Apply PCA using linear algebra
student_performance_pca_fe <- princomp(cor_matrix)

# Display summary of the PCA results
summary(student_performance_pca_fe)

# Scree Plot
factoextra::fviz_eig(student_performance_pca_fe, addlabels = TRUE)

# Loading Values
# Extract loading values for the first two principal components
loading_values <- student_performance_pca_fe$loadings[, 1:2]

# Display loading values
print(loading_values)

# Visualization of the extent to which each variable is represented in the first two components
factoextra::fviz_cos2(student_performance_pca_fe, choice = "var", axes = 1:2)

# Biplot and Cos2 Combined Plot
factoextra::fviz_pca_var(student_performance_pca_fe, col.var = "cos2",
                         gradient.cols = c("red", "orange", "green"),
                         repel = TRUE)


## STEP 10. ICA Linear Algebra Transform for Dimensionality Reduction ----
if (!is.element("fastICA", installed.packages()[, 1])) {
  install.packages("fastICA", dependencies = TRUE)
}
require("fastICA")
# Check for and handle infinite or missing values
numeric_data <- na.omit(student_performance_standardize_transform[, numeric_columns])

# Ensure numeric_data is a numeric matrix
numeric_data <- as.matrix(numeric_data)

# Replace infinite values with NA
numeric_data[!is.finite(numeric_data)] <- NA

# Remove rows with missing values
numeric_data <- na.omit(numeric_data)

# Apply ICA for dimensionality reduction
student_performance_ica_dr <- fastICA::fastICA(numeric_data, n.comp = 8)

# Create a data frame from the ICA results
student_performance_ica_dr_df <- as.data.frame(student_performance_ica_dr$S)

# Display summary of the ICA results
summary(student_performance_ica_dr_df)


