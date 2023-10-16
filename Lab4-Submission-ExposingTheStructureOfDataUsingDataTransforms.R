# STEP 1. Install and Load the Required Packages ----

## readr ----
if (require("readr")) {
  require("readr")
} else {
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






## STEP 3b. Apply a Scale Data Transform ----

# Summary of each variable
summary(student_performance_dataset)
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
# BEFORE
summary(student_performance_dataset)

#Calculate the skewness before the Box-Cox transform
sapply(student_performance_dataset[, 75:99],  skewness, type = 2)


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




model_of_the_transform <- preProcess(student_performance_dataset, method = c("BoxCox"))
print(model_of_the_transform)
student_performance_box_cox_transform <- predict(model_of_the_transform, # nolint
                                            student_performance_dataset)




# AFTER
summary(student_performance_box_cox_transform )

# Calculate the skewness after the Box-Cox transform
sapply(student_performance_box_cox_transform[, 75:99],  skewness, type = 2)

#Plot a histogram to view the skewness after the Box-Cox transform

student_average_rating <- as.numeric( unlist(student_performance_box_cox_transform [, 75]))
hist(student_average_rating, main = names(student_performance_box_cox_transform)[75])

student_average_rating <- as.numeric( unlist(student_performance_box_cox_transform [, 76]))
hist(student_average_rating, main = names(student_performance_box_cox_transform)[76])

student_average_rating <- as.numeric( unlist(student_performance_box_cox_transform [, 77]))
hist(student_average_rating, main = names(student_performance_box_cox_transform)[77])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 78]))
hist(student_score, main = names(student_performance_box_cox_transform)[78])

student_score<- as.numeric( unlist(student_performance_box_cox_transform [, 79]))
hist(student_score, main = names(student_performance_box_cox_transform)[79])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 80]))
hist(student_score, main = names(student_performance_box_cox_transform)[80])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 81]))
hist(student_score, main = names(student_performance_box_cox_transform)[81])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 82]))
hist(student_score, main = names(student_performance_box_cox_transform)[82])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 83]))
hist(student_score, main = names(student_performance_box_cox_transform)[83])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 84]))
hist(student_score, main = names(student_performance_box_cox_transform)[84])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 85]))
hist(student_score, main = names(student_performance_box_cox_transform)[85])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 86]))
hist(student_score, main = names(student_performance_box_cox_transform)[86])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 87]))
hist(student_score, main = names(student_performance_box_cox_transform)[87])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 88]))
hist(student_score, main = names(student_performance_box_cox_transform)[88])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 89]))
hist(student_score, main = names(student_performance_box_cox_transform)[89])


student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 90]))
hist(student_score, main = names(student_performance_box_cox_transform)[90])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 91]))
hist(student_score, main = names(student_performance_box_cox_transform)[91])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 92]))
hist(student_score, main = names(student_performance_box_cox_transform)[92])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 93]))
hist(student_score, main = names(student_performance_box_cox_transform)[93])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 94]))
hist(student_score, main = names(student_performance_box_cox_transform)[94])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 95]))
hist(student_score, main = names(student_performance_box_cox_transform)[95])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 96]))
hist(student_score, main = names(student_performance_box_cox_transform)[96])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 97]))
hist(student_score, main = names(student_performance_box_cox_transform)[97])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 98]))
hist(student_score, main = names(student_performance_box_cox_transform)[98])

student_score <- as.numeric( unlist(student_performance_box_cox_transform [, 99]))
hist(student_score, main = names(student_performance_box_cox_transform)[99])




## STEP 8. Apply a Yeo-Johnson Power Transform ----

# Calculate the skewness before the Yeo-Johnson transform
summary(student_performance_dataset)

sapply(student_performance_dataset[, 75:99],  skewness, type = 2)


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



model_of_the_transform <- preProcess(student_performance_dataset, method = c("YeoJohnson"))
print(model_of_the_transform)
student_performance_yeo_johnson_transform <- predict(model_of_the_transform, # nolint
                                                 student_performance_dataset)


# AFTER
summary(student_performance_yeo_johnson_transform )

# Calculate the skewness after the Yeo Johnson transform
sapply(student_performance_yeo_johnson_transform[, 75:99],  skewness, type = 2)

#Plot a histogram to view the skewness after the Box-Cox transform

student_average_rating <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 75]))
hist(student_average_rating, main = names(student_performance_yeo_johnson_transform)[75])

student_average_rating <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 76]))
hist(student_average_rating, main = names(student_performance_yeo_johnson_transform)[76])

student_average_rating <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 77]))
hist(student_average_rating, main = names(student_performance_yeo_johnson_transform)[77])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 78]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[78])

student_score<- as.numeric( unlist(student_performance_yeo_johnson_transform [, 79]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[79])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 80]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[80])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 81]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[81])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 82]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[82])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 83]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[83])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 84]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[84])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 85]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[85])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 86]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[86])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 87]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[87])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 88]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[88])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 89]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[89])


student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 90]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[90])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 91]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[91])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 92]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[92])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 93]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[93])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 94]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[94])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 95]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[95])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 96]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[96])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 97]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[97])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 98]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[98])

student_score <- as.numeric( unlist(student_performance_yeo_johnson_transform [, 99]))
hist(student_score, main = names(student_performance_yeo_johnson_transform)[99])




## STEP 9.a. PCA Linear Algebra Transform for Dimensionality Reduction ----
# Display summary of the student performance dataset

model_of_the_transform <- preProcess(student_performance_dataset, method =
                                       c("scale", "center", "pca"))

print(model_of_the_transform)
student_performance_pca_dr <- predict(model_of_the_transform, student_performance_dataset)

summary(student_performance_pca_dr )

## STEP 9.b. PCA Linear Algebra Transform for Feature Extraction ----
# We use the `princomp()` function is used to perform PCA on a correlation
# matrix.

### PCA for Feature Extraction on the  Dataset ----
# Remove rows with missing values
clean_data <- na.omit(student_performance_dataset[, 75:99])

# Check for and handle infinite and zero standard deviation values
clean_data <- clean_data[, apply(clean_data, 2, function(x) !all(is.infinite(x) | sd(x) == 0))]

# Convert data frame to numeric matrix
clean_data_matrix <- as.matrix(clean_data)

# Perform PCA
student_performance_pca_fe <- princomp(cor(clean_data_matrix))
summary(student_performance_pca_fe)


#### Scree Plot ----

factoextra::fviz_eig(student_performance_pca_fe, addlabels = TRUE)

#### Loading Values ----

student_performance_pca_fe$loadings[, 1:2]

factoextra::fviz_cos2(student_performance_pca_fe, choice = "var", axes = 1:2)



factoextra::fviz_pca_var(student_performance_pca_fe, col.var = "cos2",
                         gradient.cols = c("red", "orange", "green"),
                         repel = TRUE)



## STEP 10. ICA Linear Algebra Transform for Dimensionality Reduction ----

# Independent Component Analysis (ICA) transforms the data to return only the
# independent components. The n.comp argument is required to specify the
# desired number of independent components. This also results in a list of
# attributes that are uncorrelated.

if (!is.element("fastICA", installed.packages()[, 1])) {
  install.packages("fastICA", dependencies = TRUE)
}
require("fastICA")

### ICA for Dimensionality Reduction on the  Dataset ----
summary(student_performance_dataset)

model_of_the_transform <- preProcess(student_performance_dataset,
                                     method = c("scale", "center", "ica"),
                                     n.comp = 8)
print(model_of_the_transform)
student_performance_ica_dr <- predict(model_of_the_transform, student_performance_dataset)

summary(student_performance_ica_dr)


save.image("snapshot.RData")
