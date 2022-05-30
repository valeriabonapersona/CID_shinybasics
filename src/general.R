'
  Script: general configuration 
  Author: Valeria, CID workshop
'


# Libraries ---------------------------------------------------------------
library(tidyverse)
library(shiny)


# vars --------------------------------------------------------------------
diet_groups <- c(1:4)


# paths -------------------------------------------------------------------
src_prep <- "src/preparation/"


# Beautify ----------------------------------------------------------------
my_theme <- theme_bw() + 
  theme(legend.position = "bottom")

