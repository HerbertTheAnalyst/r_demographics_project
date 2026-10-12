# Fictional Demographics Data
age <- c(22, 35, 28, 45, 31)

edu_levels <- c("High School", "Bachelor's", "Master's", "PhD")
education_level <- factor(c("High School", "Master's", "Bachelor's", "Bachelor's", "PhD"),levels = edu_levels,ordered = TRUE)

demographics <- data.frame(
  Age = age,
  Education = education_level
)

print(demographics)
