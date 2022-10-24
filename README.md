# Project description

Repository hosting the LaTeX manuscript for a paper comparing different MI-PCR specifications.

# Repository contents

This is the template for a LaTex Rnw project. Editing should be done only in the `Rnw` files as the `.tex` are updated based on them upon compilation. 

This directory contains:
- **section_##.Rnw**, the files where the actual content of the paper is written.
- **document_version.Rnw**, the global files calling all the other section files to make up the final manuscript.
- **compile.sh** is a shell script to compile a pdf of any **document_version.Rnw**. For this script to work the relative paths of files must remain the same as in the original folder.
To get the pdf version of your manuscript simply type the following in a terminal window working in the root folder of your paper project:
  <pre><code>. compile.sh document_version.Rnw</code></pre>
  which will create a `document_version.pdf` in the pdf folder.
  For example,
  <pre><code>. compile.sh main-arxiv.Rnw</code></pre>
  produces the `main-arxiv.pdf` file
- **makearxiv.sh** is a shell script to create a zip archive that can be uploaded on arxiv.org and compiled by AutoTeX.
- **bib** is the folder containing the .bib file for the bibliography.
- **code** is the folder containing the R scripts defining the plots.
  The scripts for the simulation study plots use plotting functions that are stored in the script `functions.R`.
  - `knit-rnw.R` is the script that prepares the R environment to generate the results to be reported in the paper and knits the document
  - `functions.R` is a script containing possibly complex plotting functions used multiple times in your paper.
  - `sec-study-1-plots.R` contains the call to produce a specific plot to be placed where requested (based on the "title")
- **data** a folder containing the data files to plot
  - `mtcars.rds` is just an example dataset
- **figure** is the folder where the pictures will be stored. You do not need to actively interact with this folder.
- **style** is the folder containing the .cls and .bst files for general formatting of the manuscript.

# Repository structure

Here is the project structure:
```
.
├── README.md
├── bib
│   └── bibshelf.bib
├── code
│   ├── functions.R
│   ├── knit-rnw.R
│   └── sec-study-1-plots.R
├── compile.sh
├── data
│   └── mtcars.rds
├── figure
│   ├── plot-distribution-1.pdf
│   ├── plot-mice-1.pdf
│   └── plot-pdf-1.pdf
├── main-arxiv.Rnw
├── main-arxiv.tex
├── main-journal.Rnw
├── main-journal.tex
├── makearxiv.sh
├── pdf
│   ├── main-arxiv.pdf
│   └── main-journal.pdf
├── sec-abstract.Rnw
├── sec-biblio.Rnw
├── sec-conclusions.Rnw
├── sec-discussion.Rnw
├── sec-introduction.Rnw
├── sec-limits.Rnw
├── sec-methods.Rnw
├── sec-study-1.Rnw
├── sec-study-2.Rnw
├── style
│   ├── asj.bst
│   ├── response.cls
│   └── sagej.cls
├── submissions
├── sup-journal.Rnw
└── trackChanges.sh
```