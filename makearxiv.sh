#!/bin/bash
# Project:  paper-template
# Topic:    Bash script to prepare submission archive for arXve.org
# Author:   Edoardo Costantini
# Created:  2022-06-27
# Modified: 2022-06-27

# Store the time for easy clean up
timestamp=$(date +"%Y-%m-%d %H:%M:%S")
sleep 1 # make sure that files created differ by at least 1 sec form timestamp

# Deploy smart pdflatex to obtain .bbl file
# latexmk -pdf $1
latexmk -pdf $1

# Create temporary arxiv folder
mkdir ./submissions/arxiv

# Move bbl file to correct location (and change name to match arxiv expectation)
mv *.bbl ./submissions/arxiv/ms.bbl

# Create a copy of the input tex file named according to convention required by arxiv.com
cp $1 ./submissions/arxiv/ms.tex

# Copy figures folder
mkdir ./submissions/arxiv/figures/
cp figures/* ./submissions/arxiv/figures/

# Copy all .tex files 
cp 00_abstract.tex ./submissions/arxiv/
cp *section.tex ./submissions/arxiv/

# Create a zip archive
cd ./submissions/
zip -r arxiv.zip arxiv
cd ../

# Delete temporary folder
rm -r ./submissions/arxiv

# Remove anything else created after this script started
tput bold
printf "These files were created and deleted: \n"
tput sgr0
find . -maxdepth 1 -type f -newerBt "$timestamp" # show what you are deleting
find . -maxdepth 1 -type f -newerBt "$timestamp" -delete
# -newerBt checks files that were created after the timestamp (B for birth)
# -maxdepth 1 avoids scans of subfolders
