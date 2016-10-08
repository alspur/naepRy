# exploratory analysis
# 2016-10-07

# load data ####

# load packages
library(ggplot2)
library(dplyr)
library(readxl)
library(statebins)

# load data 
naep_data <- read_excel("data/NAEP_fulldata.xlsx", sheet = 2)

# plots ####

ggplot(naep_data, aes( x= year, y = adj_racelunchLEPSPEDageEnlang, group = state))+
  geom_line()+
  facet_grid(subject~ grade)

ggplot(naep_data %>% filter(subject == "reading" & grade == "4th grade"),
       aes(x = year, y = adj_racelunchLEPSPEDageEnlang, group = state))+
  geom_line()+
  facet_wrap(~state, nrow = 9)