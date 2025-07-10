# This is sample code to calculate some of the indices presented on the hydrometeorological indices app
# As detailed on https://github.com/climindex/hydrometsa

# This code will be updated as additional indices are included on the app
# Date of latest verison of this code: 10-07-2025

# libraries
library(readxl)
library(dplyr)
library(lubridate)

# Import data
Data = read_xlsx("ARC_Arcadia_2020-2024.xlsx")
head(Data)
str(Data)

# This data is from the Agricultural Research Council (ARC), from the station in Arcadia, Pretoria (see metadata for additional details on the station)
# For further details on the ARC weather station network, see:
# Moeletsi, M.E., Myeni, L., Kaempffer, L.C., Vermaak, D., de Nysschen, G., Henningse, C., Nel, I. and Rowswell, D., 2022. Climate dataset for South Africa by the agricultural research council. Data, 7(8), p.117. https://doi.org/10.3390/data7080117

# Tx = daily max temperature (°C)
# Tn = daily min temperature (°C)
# AveT = daily average temperature (°C)
# Rain = daily rainfall (mm)
# RHx = daily max relative humidity (%)
# RHn = daily min relative humidity (%)
# AveRH = daily average relative humidity (%)
# ET0 = daily potential evapotranspiration
# U2 = daily average wind speed
# UMax = daily max wind speed

# for simplicity each index is calculated as a single object

# Rainfall indices --------------------------------------------------------

# Includes:
# Daily rainfall (1)
# Total rainfall (last 10 and 30 days) (2)
# Number of rain days (last 30 days) (3)
# Days since last rain (up to 60 days) (4)
# Maximum daily rainfall (last 30 days) (5)


## Daily rainfall (1)
# already a variable, so no need for calculation
Daily_rainfall = Data %>%
  select(Date, Rain)

head(Daily_rainfall)
tail(Daily_rainfall)


## Total rainfall (last 10 and 30 days) (2)
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

rain_10_days = Data %>%
  # filter dataset to include only the rows that fall within last 10 days from 2024-12-31
  filter(as.Date(Date) > current_date - 10 & as.Date(Date) <= current_date) %>%
  # calculate total rainfall for the last 10 days from the current date
  summarise(Total_Rain_10_Days = sum(Rain, na.rm = TRUE))

head(rain_10_days)

rain_30_days = Data %>%
  # filter dataset to include only the rows that fall within last 30 days from 2024-12-31
  filter(as.Date(Date) > current_date - 30 & as.Date(Date) <= current_date) %>%
  # calculate total rainfall for the last 30 days from the current date
  summarise(Total_Rain_30_Days = sum(Rain, na.rm = TRUE))

head(rain_30_days)

## Number of rain days (last 30 days) (3)
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

rain_days_last_30 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 30 days with rain above 1 mm
  filter(Date > current_date - 30 & Date <= current_date, Rain >= 1) %>%
  # sum of how many days in last 30 days fit above criteria of rain >= 1mm
  summarise(Rain_Days_30 = n()) %>%
  # Extract result as a single integer
  pull(Rain_Days_30)

rain_days_last_30

## Days since last rain (up to 60 days) (4)
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

days_since_last_rain = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 60 days
  filter(Date > current_date - 60 & Date <= current_date, Rain > 0) %>%
  # Find most recent rain date
  summarise(Last_Rain_Date = max(Date, na.rm = TRUE)) %>%
  # Calculate days since last rain subtracting from current date
  mutate(Days_Since_Last_Rain = as.integer(current_date - Last_Rain_Date)) %>%
  # Extract result as a single integer
  pull(Days_Since_Last_Rain)

days_since_last_rain

## Maximum daily rainfall (last 30 days) (5)
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

max_rain_last_30 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # filter last 30 days
  filter(Date > current_date - 30 & Date <= current_date) %>%
  # Isolate highest rainfall amount for last 30 days
  summarise(Max_Rain_30 = max(Rain, na.rm = TRUE)) %>%
  # Extract result as a single integer
  pull(Max_Rain_30)

max_rain_last_30

# Temperature indices -----------------------------------------------------

# Includes:
# Daily minimum temperature (1)
# Daily maximum temperature (2)
# Frost (3)
# Heat stress days (last 10 days) (4)
# Hottest daily temperature (last 10 days) (5)
# Coldest daily temperature (last 10 days) (6)


## Daily minimum temperature (1)
# already a variable, so no need for calculation
Daily_minimum_temperature = Data %>%
  select(Date, Tn)

head(Daily_minimum_temperature)
tail(Daily_minimum_temperature)

## Daily maximum temperature (2)
# already a variable, so no need for calculation
Daily_maximum_temperature = Data %>%
  select(Date, Tx)

head(Daily_maximum_temperature)
tail(Daily_maximum_temperature)

## Frost (3)
# No, Light (below 2°C), Moderate (below 0°C), or Severe (below -2°C) frost days classification
frost_data = Data %>%
  mutate(Frost_Severity = case_when(
    Tn < -2 ~ "Severe frost",
    Tn < 0  ~ "Moderate frost",
    Tn < 2  ~ "Light frost",
    TRUE    ~ "No frost" # any other values >= 2°C are no frost
  )) %>%
  select(Tn, Frost_Severity) # only keep Tn and Frost_Severity columns

head(frost_data)

frost_data %>%
  count(Frost_Severity) # number of days in each category

## Heat stress days (last 10 days) (4)
# Number of days with a daily maximum temperature above 30°C over the last 10 days
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

hot_days_last_10 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 10 days
  filter(Date > current_date - 10 & Date <= current_date) %>%
  # Count number of days with Tx > 30°C
  summarise(Hot_Days_10 = sum(Tx > 30, na.rm = TRUE)) %>%
  # Extract result as a single integer
  pull(Hot_Days_10)

hot_days_last_10

## Hottest daily temperature (last 10 days) (5) > based on Tx
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

hottest_tx_last_10 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 10 days
  filter(Date > current_date - 10 & Date <= current_date) %>%
  # Find highest daily max temperature
  summarise(Hottest_Tx_10 = max(Tx, na.rm = TRUE)) %>%
  # Extract result as a single value
  pull(Hottest_Tx_10)

hottest_tx_last_10


## Coldest daily temperature (last 10 days) (6) > based on Tn
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

coldest_tn_last_10 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 10 days
  filter(Date > current_date - 10 & Date <= current_date) %>%
  # Find lowest daily minimum temperature
  summarise(Coldest_Tn_10 = min(Tn, na.rm = TRUE)) %>%
  # Extract result as a single value
  pull(Coldest_Tn_10)

coldest_tn_last_10

# Fire index --------------------------------------------------------------

# Includes:
# Fire danger index (Lowveld FDI)

# LFDI classification:
# Safe = 0-20
# Moderate = 21-45
# Dangerous = 46-60
# Very dangerous = 61-75
# Extremely dangerous = 76-100

# Calculation based on: Strydom, S. and Savage, M.J., 2017. Potential impacts of climate change on wildfire dynamics in the midlands of KwaZulu-Natal, South Africa. Climatic Change, 143, pp.385-397. https://doi.org/10.1007/s10584-017-2019-8


# Classification based on: https://www.weathersa.co.za/home/fireindex


# 1. Calculate days since last rainfall > 0.5 mm
calculate_days_since_rain = function(df, rain_threshold = 0.5) {
  df = df %>%
    arrange(Date) %>%
    mutate(
      rain_event = if_else(Rain > rain_threshold, TRUE, FALSE),
      days_since_rain = NA_integer_
    )
  
  last_rain_day = NA_integer_
  
  for (i in seq_len(nrow(df))) {
    if (df$rain_event[i]) {
      df$days_since_rain[i] = 0
      last_rain_day = i
    } else if (!is.na(last_rain_day)) {
      df$days_since_rain[i] = i - last_rain_day
    } else {
      df$days_since_rain[i] = NA_integer_
    }
  }
  
  df = df %>% select(-rain_event)
  return(df)
}

# 2. Calculate LFDI components and final value
calculate_lfdi = function(df) {
  df = df %>%
    mutate(
      # Burning Index
      BI = 30 + AveT - (0.3158 * AveRH),
      
      # Wind speed stepwise adjustment
      BIPWS = case_when(
        U2 < 0.555 ~ BI + 0.1,
        U2 >= 0.555 & U2 < 2.222 ~ BI + 5,
        U2 >= 2.222 & U2 < 4.444 ~ BI + 10,
        U2 >= 4.444 & U2 < 6.666 ~ BI + 15,
        U2 >= 6.666 & U2 < 8.888 ~ BI + 20,
        U2 >= 8.888 & U2 < 10 ~ BI + 25,
        U2 >= 10 & U2 < 11.3888 ~ BI + 30,
        U2 >= 11.3888 & U2 < 12.5 ~ BI + 35,
        U2 >= 12.5 ~ BI + 40,
        TRUE ~ NA_real_
      ),
      
      # Rainfall Correction Factor (bounded between 0 and 1)
      RCF_raw = 0.49194 - 0.03072 * Rain + 0.22151 * days_since_rain +
        0.00050275 * Rain^2 - 0.02156 * days_since_rain^2 -
        0.00000310334 * Rain^3 + 0.00107 * days_since_rain^3,
      RCF = pmin(pmax(RCF_raw, 0), 1),
      
      # Final LFDI
      LFDI = BIPWS * RCF
    )
  return(df)
}

# 3. Classify LFDI into fire danger levels
classify_lfdi = function(df) {
  df %>%
    mutate(
      fire_danger_level = case_when(
        LFDI <= 20 ~ "Safe",
        LFDI > 20 & LFDI <= 45 ~ "Moderate",
        LFDI > 45 & LFDI <= 60 ~ "Dangerous",
        LFDI > 60 & LFDI <= 75 ~ "Very dangerous",
        LFDI > 75 ~ "Extremely dangerous",
        TRUE ~ NA_character_
      )
    )
}

# 4. Apply all steps to your dataset 'Data'
Fire_danger = Data %>%
  mutate(Date = as.Date(Date)) %>%
  calculate_days_since_rain() %>%
  calculate_lfdi() %>%
  classify_lfdi()

summary(Fire_danger)

# Potential evapotranspiration index --------------------------------------

# Includes:
# Total potential evapotranspiration (last 10 and 30 days)
# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

# Total ET0 over last 10 days
et0_10_days = Data %>%
  filter(as.Date(Date) > current_date - 10 & as.Date(Date) <= current_date) %>%
  summarise(Total_ET0_10_Days = sum(ET0, na.rm = TRUE))

head(et0_10_days)

# Total ET0 over last 30 days
et0_30_days = Data %>%
  filter(as.Date(Date) > current_date - 30 & as.Date(Date) <= current_date) %>%
  summarise(Total_ET0_30_Days = sum(ET0, na.rm = TRUE))

head(et0_30_days)


# Thermal comfort index ---------------------------------------------------

# Includes:
# Temperature-humidity index
# Calculation (and classification) based on: 
# Thornton, P., Nelson, G., Mayberry, D. and Herrero, M., 2021. Increases in extreme heat stress in domesticated livestock species during the twenty‐first century. Global Change Biology, 27(22), pp.5762-5772. https://doi.org/10.1111/gcb.15825

thi_data = Data %>%
  mutate(
    # Calculate THI
    THI = (1.8 * AveT + 32) - (0.55 - 0.0055 * AveRH) * (AveT - 26.8),
    # Categorise by species
    
    # Cattle
    THI_Cattle = case_when(
      THI >= 91 ~ "Extreme heat stress",
      THI >= 80 ~ "High heat stress",
      THI >= 72 ~ "Moderate heat stress",
      TRUE      ~ "No stress"
    ),
    
    # Goats
    THI_Goats = case_when(
      THI >= 89 ~ "Extreme heat stress",
      THI >= 79 ~ "High heat stress",
      THI >= 70 ~ "Moderate heat stress",
      TRUE      ~ "No stress"
    ),
    
    # Sheep
    THI_Sheep = case_when(
      THI >= 90 ~ "Extreme heat stress",
      THI >= 78 ~ "High heat stress",
      THI >= 72 ~ "Moderate heat stress",
      TRUE      ~ "No stress"
    ),
    
    # Poultry
    THI_Poultry = case_when(
      THI >= 84 ~ "Extreme heat stress",
      THI >= 79 ~ "High heat stress",
      THI >= 72 ~ "Moderate heat stress",
      TRUE      ~ "No stress"
    ),
    
    # Pigs
    THI_Pigs = case_when(
      THI >= 84 ~ "Extreme heat stress",
      THI >= 79 ~ "High heat stress",
      THI >= 75 ~ "Moderate heat stress",
      TRUE      ~ "No stress"
    )
  ) %>%
  # Keep only THI and species-specific categories
  select(Date, THI, THI_Cattle, THI_Goats, THI_Sheep, THI_Poultry, THI_Pigs)

head(thi_data)
tail(thi_data)
summary(thi_data)

# Wind index --------------------------------------------------------------

# Includes:
# Damaging winds (last 10 days) as number of days in the last 10 days on which wind speeds exceeded 17 m/s 
# Classification based on Beaufort wind scale, using lower limit for winds of gale strength

# Pretend today's date is 2024-12-31 (i.e., last day of the sample data)
current_date = as.Date("2024-12-31")
print(current_date)

damaging_wind_days_10 = Data %>%
  mutate(Date = as.Date(Date)) %>%
  # Filter last 10 days
  filter(Date > current_date - 10 & Date <= current_date) %>%
  # Count days where UMax > 17 m/s
  summarise(Damaging_Wind_Days_10 = sum(UMax > 17, na.rm = TRUE)) %>%
  pull(Damaging_Wind_Days_10)

damaging_wind_days_10
