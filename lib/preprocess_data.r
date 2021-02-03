library(dplyr)
library(car)
library(data.table)
library(ggplot2)
library(datasets)
library(haven)

anes_dat <- read_sav("anes_timeseries_cdf_sav/anes_timeseries_cdf.sav")


Election_years = as.character(seq(2000, 2016, 4))

anes_use = anes_dat %>%
  mutate(
    year = as_factor(VCF0004),
    turnout = as_factor(VCF0703),
    vote= as_factor(VCF0706),
    race= as_factor(VCF0105a),
    gender = as_factor(VCF0104), 
    language = as_factor(VCF0018a),
    interview = as_factor(VCF0017),
    urbanism = as_factor(VCF0111),
    region = as_factor(VCF0112),
    work = as_factor(VCF0116),
    grewup = as_factor(VCF0137),
    job = as_factor(VCF0155),
    outofwork = as_factor(VCF0156)
  ) %>%
  filter(year %in% Election_years)
  
anes_use = anes_use %>% select(year, turnout, vote, race, gender, language, interview, urbanism, region, work, grewup, job, outofwork)
 
# divide into groups of related variables
anes_use1 = anes_use %>% select(year, vote, race, language, interview, gender, turnout)
anes_use2 = anes_use %>% select(year, vote, region, urbanism, grewup, turnout)
anes_use3 = anes_use %>% select(year, vote, work, job, outofwork, turnout)

# remove na
anes_new1 = na.omit(anes_use1)
anes_new2 = na.omit(anes_use2)
anes_new3 = na.omit(anes_use3)
