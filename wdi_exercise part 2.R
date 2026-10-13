wdi_country_only <- read.csv("wdi.clean.csv")
wdi_2020 <- subset(wdi_country_only, year == 2020)


# QUESTION 1

simple_mean_fert <- mean(wdi_2020$fert, na.rm = TRUE)

fert_data <- subset(wdi_2020,!is.na(fert) & !is.na(pop))
weighted_mean <- sum(fert_data$fert * fert_data$pop)/sum(fert_data$pop)

# QUESTION 2

wdi_country_only_2020$gdppc <- log(wdi_country_only_2020$gdppc)

mean(wdi_country_only_2020$gdppc, na.rm = TRUE)
