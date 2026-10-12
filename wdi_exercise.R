# install.packages("WDI")
install.packages("WDI")

# Load the Library so R knows how to pull World Bank data
library(WDI)


#QUESTION 1: DOWNLOADING DATA
## We bundle the 8 specific indicator codes into a list vector using c()
my_indicators <- c(
  "SP.DYN.LE00.IN",
  "SH.DYN.MORT",
  "SP.DYN.TFRT.IN",
  "NY.GDP.PCAP.PP.KD",
  "SP.POP.TOTL",
  "SP.URB.TOTL.IN.ZS",
  "EG.ELC.ACCS.ZS",
  "SE.SEC.ENRR.FE"
)

# Pull the data from 1990 to 2022. extra = TRUU downloads country metadata
raw_data <- WDI(indicator = my_indicators, start= 1990, end = 2022, extra = TRUE)
# QUESTION 1: DATA DIMENSIONS

# dim() prints the total rows and columns: [Rows][Columns]
dim(raw_data)

# Count the total unique countries/regions in our data
length(unique(raw_data$country))

# Count the total unique years in our data
length(unique(raw_data$year))

