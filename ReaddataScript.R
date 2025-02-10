################################################################################
# Exploratory data analysis of NSP
# Author: Yushuf Sharker
# Date: 02/07/2025
# Project location: https://github.com/YushufSharker/NSP.git
################################################################################
# Packages used
rm(list = ls())
library(tidyverse)
library(broom)
library(haven)
library(readxl)
library(lme4)
library(codebookr)


# Data import and processing
location <- "J:/bdm/tbos/DENALI/studies/tak-594-0001/anon/NSP/data/Data_in_xlsx_format"

nsp21 <- read_xlsx(paste(location, "Export1_NSP_external_correctedfromBiogen_19NOV2021.xlsx", sep = "/"))
nsp22 <- read_xls(paste(location, "Export2_NSP_external_09AUG2022.xls", sep = "/"))
nsp23<- read_xlsx(paste(location, "Export4_NSP_external_dictionary_13NOV2023.xlsx", sep = "/"))
nsp23mar<- read_xls(paste(location, "Export3_NSP_external_28MAR2023.xls", sep = "/"))
nsp24nfl<- read_xls(paste(location, "Export5_NSP_external_NfL_30AUG2024.xls", sep = "/"))
nsp24cli<- read_xls(paste(location, "Export5_NSP_external_clinical_30AUG2024.xls", sep = "/"))


nsp24 <- nsp24cli %>% left_join(nsp24nfl, by = c("NSP_DID","ALLFTD_CYCLE"))

nsp24 %>% select(NSP_DID, ALLFTD_CYCLE, NFL1_MEAN)

# used only 24
# merge nfl with clinical


