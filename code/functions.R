# Project:   paper-template
# Objective: List of plotting functions used for this paper
# Author:    Edoardo Costantini
# Created:   2022-10-24
# Modified:  2022-10-24
# Notes: 

# Plot density of a variable ---------------------------------------------------

plotPDF <- function(x){
    plot(density(x))
}