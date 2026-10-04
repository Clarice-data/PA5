# cat_argument_matching.R
# Clarice Landman-Montano
# 10/04/2026
# Demonstrate cat() and argument matching, CSV save, restore and view.

# Demonstrate cat() by creating a readable student summary

student_name <- "Jane Doe"
course_name <- "American History"
assignment_name <- "Constitutional Essay"

cat(
  "Student: ", student_name, "\n",
  "Course: ", course_name, "\n",
  "Assignment: ", assignment_name, "\n"
)

# Create a data frame showing the three argument matching types

argument_matching_examples <- data.frame(
  MatchingType = c(
    "Exact",
    "Partial",
    "Positional"
  ),
  Example = c(
    "cat(..., sep = ' ', fill = FALSE)",
    "cat(..., se = ' ', fi = FALSE)",
    "cat(..., ' ', FALSE)"
  )
)

# Write the data frame to a CSV file

write.csv(
  argument_matching_examples,
  "cat_argument_matching_examples.csv",
  row.names = FALSE
)

# Remove the data frame from the environment
rm(argument_matching_examples)

# Restore the data frame from the CSV file

argument_matching_examples <- read.csv(
  "cat_argument_matching_examples.csv"
)

# View the restored data frame
View(argument_matching_examples)