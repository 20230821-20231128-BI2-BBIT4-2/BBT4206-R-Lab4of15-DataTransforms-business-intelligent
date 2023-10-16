



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
barplot(table(student_performance_dataset$extra_curricular), main = "Participation in Extra Curricular Activities")
barplot(table(student_performance_dataset$sports_extra_curricular), main = "Participation in Sports Extra Curricular")
barplot(table(student_performance_dataset$meditate), main = "Meditation Frequency")
barplot(table(student_performance_dataset$pray), main = "Prayer Frequency")
barplot(table(student_performance_dataset$motivator), main = "Motivator")
barplot(table(student_performance_dataset$read_content_before_lecture), main = "Read Content Before Lecture")
barplot(table(student_performance_dataset$answer_rhetorical_questions), main = "Answer Rhetorical Questions")
barplot(table(student_performance_dataset$studying_in_study_group), main = "Studying in Study Group")

# Add more histograms as needed for other variables of interest

# Assuming your dataset is named student_performance_dataset
numeric_columns <- sapply(student_performance_dataset, is.numeric)

# Print the names of numeric columns
print(names(student_performance_dataset[numeric_columns]))
column_numeric <- as.numeric(student_performance_dataset[, 51])
hist(column_numeric, main = names(student_performance_dataset)[51])

class(student_performance_dataset[, 51])
# Convert the column to a numeric vector
column_numeric <- as.numeric(as.character(student_performance_dataset$`TOTAL = Coursework TOTAL + EXAM (100%)`))

# Check the class again
class(column_numeric)

# Create a histogram
hist(column_numeric, main = names(student_performance_dataset)[51])

# Convert column 52 to a numeric vector
column_52_numeric <- as.numeric(as.character(student_performance_dataset$`Absenteeism Percentage`))

# Check the class
class(column_52_numeric)

# Create a histogram for column 52
hist(column_52_numeric, main = names(student_performance_dataset)[52])

# Repeat for column 53
column_53_numeric <- as.numeric(as.character(student_performance_dataset$`Coursework TOTAL: x/40 (40%)`))
class(column_53_numeric)
hist(column_53_numeric, main = names(student_performance_dataset)[53])

# Repeat for column 5
column_5_numeric <- as.numeric(as.character(student_performance_dataset$`A - 4. The subject content is delivered according to the course outline and meets my expectations`))
class(column_5_numeric)
hist(column_5_numeric, main = names(student_performance_dataset)[5])


class(student_performance_dataset[, 76])

column_76_numeric <- as.numeric(as.character(student_performance_dataset[[76]]))
class(column_76_numeric)
hist(column_76_numeric, main = names(student_performance_dataset)[76])


# Assuming columns 76 to 97 have been converted to numeric
numeric_columns <- 76:97

# Create histograms for each numeric column using lapply
lapply(numeric_columns, function(col) {
  hist(student_performance_dataset[, col], main = names(student_performance_dataset)[col])
})


library(dplyr)

# Assuming columns 76 to 96 need to be converted to numeric
numeric_columns <- 76:96

# Convert columns 76 to 96 to numeric
student_performance_dataset <- student_performance_dataset %>%
  mutate(across(all_of(numeric_columns), as.numeric))

lapply(numeric_columns, function(col) {
  hist(student_performance_dataset[, col], main = names(student_performance_dataset)[col])
})

student_performance_dataset[, 75:97] <- lapply( student_performance_dataset[, 75:97], as.numeric )

# BEFORE

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 75]))
hist(student_average_rating, main = names(student_performance_dataset)[75])

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 76]))
hist(student_average_rating, main = names(student_performance_dataset)[76])

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 77]))
hist(student_average_rating, main = names(student_performance_dataset)[77])

student_score <- as.numeric( unlist(student_performance_dataset [, 78]))
hist(student_score, main = names(student_performance_dataset)[78])

student_score<- as.numeric( unlist(student_performance_dataset [, 79]))
hist(student_score, main = names(student_performance_dataset)[79])

student_score <- as.numeric( unlist(student_performance_dataset [, 80]))
hist(student_score, main = names(student_performance_dataset)[80])

student_score <- as.numeric( unlist(student_performance_dataset [, 81]))
hist(student_score, main = names(student_performance_dataset)[81])

student_score <- as.numeric( unlist(student_performance_dataset [, 82]))
hist(student_score, main = names(student_performance_dataset)[82])

student_score <- as.numeric( unlist(student_performance_dataset [, 83]))
hist(student_score, main = names(student_performance_dataset)[83])

student_score <- as.numeric( unlist(student_performance_dataset [, 84]))
hist(student_score, main = names(student_performance_dataset)[84])

student_score <- as.numeric( unlist(student_performance_dataset [, 85]))
hist(student_score, main = names(student_performance_dataset)[85])

student_score <- as.numeric( unlist(student_performance_dataset [, 86]))
hist(student_score, main = names(student_performance_dataset)[86])

student_score <- as.numeric( unlist(student_performance_dataset [, 87]))
hist(student_score, main = names(student_performance_dataset)[87])

student_score <- as.numeric( unlist(student_performance_dataset [, 88]))
hist(student_score, main = names(student_performance_dataset)[88])

student_score <- as.numeric( unlist(student_performance_dataset [, 89]))
hist(student_score, main = names(student_performance_dataset)[89])


student_score <- as.numeric( unlist(student_performance_dataset [, 90]))
hist(student_score, main = names(student_performance_dataset)[90])

student_score <- as.numeric( unlist(student_performance_dataset [, 91]))
hist(student_score, main = names(student_performance_dataset)[91])

student_score <- as.numeric( unlist(student_performance_dataset [, 92]))
hist(student_score, main = names(student_performance_dataset)[92])

student_score <- as.numeric( unlist(student_performance_dataset [, 93]))
hist(student_score, main = names(student_performance_dataset)[93])

student_score <- as.numeric( unlist(student_performance_dataset [, 94]))
hist(student_score, main = names(student_performance_dataset)[94])

student_score <- as.numeric( unlist(student_performance_dataset [, 95]))
hist(student_score, main = names(student_performance_dataset)[95])

student_score <- as.numeric( unlist(student_performance_dataset [, 96]))
hist(student_score, main = names(student_performance_dataset)[96])

student_score <- as.numeric( unlist(student_performance_dataset [, 97]))
hist(student_score, main = names(student_performance_dataset)[97])

student_score <- as.numeric( unlist(student_performance_dataset [, 98]))
hist(student_score, main = names(student_performance_dataset)[98])

student_score <- as.numeric( unlist(student_performance_dataset [, 99]))
hist(student_score, main = names(student_performance_dataset)[99])


model_of_the_transform <- preProcess(student_performance_dataset, method = c("scale"))
print(model_of_the_transform)
student_performance_scale_transform <- predict(model_of_the_transform,
                                            student_performance_dataset)


# AFTER

student_average_rating <- as.numeric( unlist(student_performance_scale_transform [, 75]))
hist(student_average_rating, main = names(student_performance_scale_transform)[75])

student_average_rating <- as.numeric( unlist(student_performance_scale_transform [, 76]))
hist(student_average_rating, main = names(student_performance_scale_transform)[76])

student_average_rating <- as.numeric( unlist(student_performance_scale_transform [, 77]))
hist(student_average_rating, main = names(student_performance_scale_transform)[77])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 78]))
hist(student_score, main = names(student_performance_scale_transform)[78])

student_score<- as.numeric( unlist(student_performance_scale_transform [, 79]))
hist(student_score, main = names(student_performance_scale_transform)[79])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 80]))
hist(student_score, main = names(student_performance_scale_transform)[80])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 81]))
hist(student_score, main = names(student_performance_scale_transform)[81])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 82]))
hist(student_score, main = names(student_performance_scale_transform)[82])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 83]))
hist(student_score, main = names(student_performance_scale_transform)[83])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 84]))
hist(student_score, main = names(student_performance_scale_transform)[84])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 85]))
hist(student_score, main = names(student_performance_scale_transform)[85])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 86]))
hist(student_score, main = names(student_performance_scale_transform)[86])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 87]))
hist(student_score, main = names(student_performance_scale_transform)[87])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 88]))
hist(student_score, main = names(student_performance_scale_transform)[88])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 89]))
hist(student_score, main = names(student_performance_scale_transform)[89])


student_score <- as.numeric( unlist(student_performance_scale_transform [, 90]))
hist(student_score, main = names(student_performance_scale_transform)[90])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 91]))
hist(student_score, main = names(student_performance_scale_transform)[91])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 92]))
hist(student_score, main = names(student_performance_scale_transform)[92])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 93]))
hist(student_score, main = names(student_performance_scale_transform)[93])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 94]))
hist(student_score, main = names(student_performance_scale_transform)[94])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 95]))
hist(student_score, main = names(student_performance_scale_transform)[95])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 96]))
hist(student_score, main = names(student_performance_scale_transform)[96])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 97]))
hist(student_score, main = names(student_performance_scale_transform)[97])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 98]))
hist(student_score, main = names(student_performance_scale_transform)[98])

student_score <- as.numeric( unlist(student_performance_scale_transform [, 99]))
hist(student_score, main = names(student_performance_scale_transform)[99])


student_data_avg <- as.numeric( unlist(student_data_avg_scale_transform [, 75]))
hist(student_data_avg,
     main = names(student_data_avg_scale_transform)[75])






## STEP 4. Apply a Centre Data Transform ----

# BEFORE

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 75]))
boxplot(student_average_rating, main = names(student_performance_dataset)[75])

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 76]))
boxplot(student_average_rating, main = names(student_performance_dataset)[76])

student_average_rating <- as.numeric( unlist(student_performance_dataset [, 77]))
boxplot(student_average_rating, main = names(student_performance_dataset)[77])

student_score <- as.numeric( unlist(student_performance_dataset [, 78]))
boxplot(student_score, main = names(student_performance_dataset)[78])

student_score<- as.numeric( unlist(student_performance_dataset [, 79]))
boxplot(student_score, main = names(student_performance_dataset)[79])

student_score <- as.numeric( unlist(student_performance_dataset [, 80]))
boxplot(student_score, main = names(student_performance_dataset)[80])

student_score <- as.numeric( unlist(student_performance_dataset [, 81]))
boxplot(student_score, main = names(student_performance_dataset)[81])

student_score <- as.numeric( unlist(student_performance_dataset [, 82]))
boxplot(student_score, main = names(student_performance_dataset)[82])

student_score <- as.numeric( unlist(student_performance_dataset [, 83]))
boxplot(student_score, main = names(student_performance_dataset)[83])

student_score <- as.numeric( unlist(student_performance_dataset [, 84]))
boxplot(student_score, main = names(student_performance_dataset)[84])

student_score <- as.numeric( unlist(student_performance_dataset [, 85]))
boxplot(student_score, main = names(student_performance_dataset)[85])

student_score <- as.numeric( unlist(student_performance_dataset [, 86]))
boxplot(student_score, main = names(student_performance_dataset)[86])

student_score <- as.numeric( unlist(student_performance_dataset [, 87]))
boxplot(student_score, main = names(student_performance_dataset)[87])

student_score <- as.numeric( unlist(student_performance_dataset [, 88]))
boxplot(student_score, main = names(student_performance_dataset)[88])

student_score <- as.numeric( unlist(student_performance_dataset [, 89]))
boxplot(student_score, main = names(student_performance_dataset)[89])


student_score <- as.numeric( unlist(student_performance_dataset [, 90]))
boxplot(student_score, main = names(student_performance_dataset)[90])

student_score <- as.numeric( unlist(student_performance_dataset [, 91]))
boxplot(student_score, main = names(student_performance_dataset)[91])

student_score <- as.numeric( unlist(student_performance_dataset [, 92]))
boxplot(student_score, main = names(student_performance_dataset)[92])

student_score <- as.numeric( unlist(student_performance_dataset [, 93]))
boxplot(student_score, main = names(student_performance_dataset)[93])

student_score <- as.numeric( unlist(student_performance_dataset [, 94]))
boxplot(student_score, main = names(student_performance_dataset)[94])

student_score <- as.numeric( unlist(student_performance_dataset [, 95]))
boxplot(student_score, main = names(student_performance_dataset)[95])

student_score <- as.numeric( unlist(student_performance_dataset [, 96]))
boxplot(student_score, main = names(student_performance_dataset)[96])

student_score <- as.numeric( unlist(student_performance_dataset [, 97]))
boxplot(student_score, main = names(student_performance_dataset)[97])

student_score <- as.numeric( unlist(student_performance_dataset [, 98]))
boxplot(student_score, main = names(student_performance_dataset)[98])

student_score <- as.numeric( unlist(student_performance_dataset [, 99]))
boxplot(student_score, main = names(student_performance_dataset)[99])


model_of_the_transform <- preProcess(student_performance_dataset, method = c("center"))
print(model_of_the_transform)
student_performance_center_transform <- predict(model_of_the_transform,
                                               student_performance_dataset)


# AFTER

student_average_rating <- as.numeric( unlist(student_performance_center_transform [, 75]))
boxplot(student_average_rating, main = names(student_performance_center_transform)[75])

student_average_rating <- as.numeric( unlist(student_performance_center_transform [, 76]))
boxplot(student_average_rating, main = names(student_performance_center_transform)[76])

student_average_rating <- as.numeric( unlist(student_performance_center_transform [, 77]))
boxplot(student_average_rating, main = names(student_performance_center_transform)[77])

student_score <- as.numeric( unlist(student_performance_center_transform [, 78]))
boxplot(student_score, main = names(student_performance_center_transform)[78])

student_score<- as.numeric( unlist(student_performance_center_transform [, 79]))
boxplot(student_score, main = names(student_performance_center_transform)[79])

student_score <- as.numeric( unlist(student_performance_center_transform [, 80]))
boxplot(student_score, main = names(student_performance_center_transform)[80])

student_score <- as.numeric( unlist(student_performance_center_transform [, 81]))
boxplot(student_score, main = names(student_performance_center_transform)[81])

student_score <- as.numeric( unlist(student_performance_center_transform [, 82]))
boxplot(student_score, main = names(student_performance_center_transform)[82])

student_score <- as.numeric( unlist(student_performance_center_transform [, 83]))
boxplot(student_score, main = names(student_performance_center_transform)[83])

student_score <- as.numeric( unlist(student_performance_center_transform [, 84]))
boxplot(student_score, main = names(student_performance_center_transform)[84])

student_score <- as.numeric( unlist(student_performance_center_transform [, 85]))
boxplot(student_score, main = names(student_performance_center_transform)[85])

student_score <- as.numeric( unlist(student_performance_center_transform [, 86]))
boxplot(student_score, main = names(student_performance_center_transform)[86])

student_score <- as.numeric( unlist(student_performance_center_transform [, 87]))
boxplot(student_score, main = names(student_performance_center_transform)[87])

student_score <- as.numeric( unlist(student_performance_center_transform [, 88]))
boxplot(student_score, main = names(student_performance_center_transform)[88])

student_score <- as.numeric( unlist(student_performance_center_transform [, 89]))
boxplot(student_score, main = names(student_performance_center_transform)[89])


student_score <- as.numeric( unlist(student_performance_center_transform [, 90]))
boxplot(student_score, main = names(student_performance_center_transform)[90])

student_score <- as.numeric( unlist(student_performance_center_transform [, 91]))
boxplot(student_score, main = names(student_performance_center_transform)[91])

student_score <- as.numeric( unlist(student_performance_center_transform [, 92]))
boxplot(student_score, main = names(student_performance_center_transform)[92])

student_score <- as.numeric( unlist(student_performance_center_transform [, 93]))
boxplot(student_score, main = names(student_performance_center_transform)[93])

student_score <- as.numeric( unlist(student_performance_center_transform [, 94]))
boxplot(student_score, main = names(student_performance_center_transform)[94])

student_score <- as.numeric( unlist(student_performance_center_transform [, 95]))
boxplot(student_score, main = names(student_performance_center_transform)[95])

student_score <- as.numeric( unlist(student_performance_center_transform [, 96]))
boxplot(student_score, main = names(student_performance_center_transform)[96])

student_score <- as.numeric( unlist(student_performance_center_transform [, 97]))
boxplot(student_score, main = names(student_performance_center_transform)[97])

student_score <- as.numeric( unlist(student_performance_center_transform [, 98]))
boxplot(student_score, main = names(student_performance_center_transform)[98])

student_score <- as.numeric( unlist(student_performance_center_transform [, 99]))
boxplot(student_score, main = names(student_performance_center_transform)[99])


student_data_avg <- as.numeric( unlist(student_data_avg_scale_transform [, 75]))
boxplot(student_data_avg,
     main = names(student_data_avg_scale_transform)[75])










# Standardize Data Transform ----
## STEP 5. Apply a Standardize Data Transform ----
# BEFORE
summary(student_performance_dataset)
sapply(student_performance_dataset[, 75:99], sd)


model_of_the_transform <- preProcess(student_performance_dataset,
                                     method = c("scale", "center"))
print(model_of_the_transform)
student_performance_standardize_transform <- predict(model_of_the_transform, # nolint
                                                student_performance_dataset)


# AFTER
summary(student_performance_standardize_transform )
sapply(student_performance_standardize_transform [, 75:99], sd)


## STEP 6. Apply a Normalize Data Transform ----
summary(student_performance_dataset)
model_of_the_transform <- preProcess(student_performance_dataset, method = c("range"))
print(model_of_the_transform)
student_performance_normalize_transform <- predict(model_of_the_transform, # nolint
                                              student_performance_dataset)
summary(student_performance_normalize_transform)

## STEP 7. Apply a Box-Cox Power Transform ----
# Extract numeric columns
numeric_columns <- sapply(student_performance_dataset, is.numeric)

# Filter truly numeric columns
numeric_data <- student_performance_dataset[, numeric_columns]

# Calculate the skewness before the Box-Cox transform
sapply(numeric_data, skewness, type = 2)

# Plot histograms to view the skewness before the Box-Cox transform
for (i in colnames(numeric_data)) {
  hist(unlist(numeric_data[, i]), main = i)
}

# Apply the Box-Cox transform directly
student_performance_box_cox_transform <- lapply(numeric_data, function(x) {
  if (all(!is.na(x)) && min(x, na.rm = TRUE) > 0) {
    return(BoxCoxTrans(x))
  } else {
    return(x)
  }
})

# Display summary statistics of the dataset after Box-Cox transform
summary(student_performance_box_cox_transform)

# Calculate the skewness after the Box-Cox transform
skewness_values <- sapply(student_performance_box_cox_transform, function(x) {
  if (is.numeric(x)) {
    skewness(x, type = 2)
  } else {
    NA
  }
})

# Print the skewness values
print(skewness_values)

# Plot histograms to view the skewness after the Box-Cox transform
for (i in colnames(student_performance_box_cox_transform)) {
  if (all(is.numeric(student_performance_box_cox_transform[[i]]))) {
    hist(student_performance_box_cox_transform[[i]], main = i)
  } else {
    cat("Cannot plot histogram for", i, "as it contains non-numeric values or NAs.\n")
  }
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


