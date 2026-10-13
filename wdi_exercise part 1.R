# install.packages("WDI")
install.packages("WDI")

# Load the Library so R knows how to pull World Bank data
library(WDI)

wdi <- WDI(country = "all",
           indicator = c(lifeexp = "SP.DYN.LE00.IN",
                         u5mort = "SH.DYN.MORT",
                         fert = "SP.DYN.TFRT.IN",
                         gdppc = "NY.GDP.PCAP.PP.KD",
                         pop = "SP.POP.TOTL",
                         urban = "SP.URB.TOTL.IN.ZS",
                         elec = "EG.ELC.ACCS.ZS",
                         fsec = "SE.SEC.ENRR.FE"),
           start = 1990, end = 2022,
           extra = TRUE)


## QUESTION ONE

str(wdi)
head(wdi)
nrow(wdi) #number of rows
ncol(wdi) #number of columns
dim(wdi) # dimension of the dataframe
length(unique(wdi$country)) # number of countries
length(unique(wdi$year)) # numbers of years

## QUESTION TWO
wdi_country_only <- subset(wdi, region != "Aggregates")
length(unique(wdi_country_only$country))


wdi_2020 <- subset(wdi, year == 2020)
wdi_country_only_2020 <- subset(wdi_country_only, year == 2020)

mean(wdi_2020$fert, na.rm = TRUE)
mean(wdi_country_only_2020$fert, na.rm = TRUE)
     
wdi_country_only_2020[which.max(wdi_country_only_2020$lifeexp),c("country","lifeexp")]


max(wdi_country_only_2020$lifeexp)

summary(wdi_country_only_2020$fert)

summary(wdi_country_only_2020$u5mort)
summary(wdi_country_only_2020$lifeexp)
summary(wdi_country_only_2020$gdppc)

#QUESTION 4
plot(wdi_country_only_2020$gdppc,wdi_country_only_2020$lifeexp)


write.csv(wdi_country_only, "wdi_clean.csv")

new_data <- read.csv("wdi_clean.csv")


write.csv(wdi_country_only,"wdi.clean.csv", row.names = FALSE)

# PART 2



