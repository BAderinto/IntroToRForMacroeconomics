# DATA MANIPULATION: LOADING THE DATA ----

# Importing Data Files ----
tempdata <- read.csv("data/NH.Ts+dSST.csv",skip=1,na.strings = "***",
                     header=TRUE)
str(tempdata)

# co2
co2data <- read.table("data/co2_mm_mlo.txt", skip=72, na.strings=-99.99,
                      header=FALSE)
names(co2data) <- c("Year","Month","Date","Co2.miss", "Co2", "Trend", "ind")

# View first few default rows
head(co2data)

# Specify first few rows
head(co2data, 10)

# Specify last few rows of the data
tail(co2data, 10)

# Assign column(Variable) Co2 to co2data 
co2data <- co2data[5]


save(tempdata, co2data, file="climate.rda")

# Remove data objects
rm(tempdata)
rm(co2data)

load("/cloud/project/climate.rda")


