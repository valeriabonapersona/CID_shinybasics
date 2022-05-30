'
  Script: Preparation dataset
  Author: Valeria, CID workshop
'


# Load data ---------------------------------------------------------------
# either own data or as provided here below
# for own data, place it in data/raw/ 
# load your data as dat (eg dat <- read.csv(yourdata.csv))
data("ChickWeight")


# clean data --------------------------------------------------------------
# data in long format, i.e. one row = one observation
dat <- ChickWeight %>% 
  
  # var names to lower case
  rename_all(tolower) %>%
  
  # create var for males and females
  mutate(sex = ifelse(as.numeric(chick)%%2==0, "male", "female")) %>%
  
  # rename and reorder vars
  select(chick, sex, diet, time, weight) 

# clean up environment
rm(ChickWeight)
  
  


