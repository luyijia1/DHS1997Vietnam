# Contact: yijia.lu@mail.utoronto.ca
# Purpose: Download the Demographic and Health Survery (DHS) of Vietnam in 1997
# Use R Projects, not setwd()

#### Workspace setup ####
library(janitor)
library(pdftools)
library(purrr)
library(tidyverse)
library(stringi)

download.file(
  "https://dhsprogram.com/pubs/pdf/FR104/FR104.pdf", 
  "1997_Vietnam_DHS.pdf",
  mode="wb")


