# Project:   paper-template
# Objective: Initialize environment and knit any main document
# Author:    Edoardo Costantini
# Created:   2022-10-13
# Modified:  2022-10-13
# Notes: 

# Parse argument from compile script
args = commandArgs(trailingOnly = TRUE)

# Load packages
library(knitr)
library(mice)

# Possibly load data to use in the different Rnws
results <- readRDS("./data/mtcars.rds")

# Source plotting functions
source("./code/functions.R")

# Compose name of Rnw based on input
Rnw_file <- paste0(args, ".Rnw")

# Knit file
knit(Rnw_file)