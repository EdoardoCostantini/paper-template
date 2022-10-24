# Project description

Repository hosting the LaTeX manuscript for a paper comparing different MI-PCR specifications.

# Repository contents

This is a LaTex Rnw project. Editing should be done only in the `Rnw` files as the `.tex` are updated based on them upon compilation. 
There are three `.Rwn` files:

- `BRM.Rnw` - version of the paper for Behavior Research Methods Journal
- `arxiv.Rnw` - preprint version for arxiv.org
- `draft.Rnw` - generic draft

These files require inputs a mix of `.Rnw` and `.tex` files that are woven by `knitr` by the `.compile.sh` bash script.
In this project, all the sections of the manuscript are stored in `.Rnw` files.
Always work in the `.Rnw` file to change the content of the paper.
Some additional sections are provided in `.tex` format as they will never require the use of R code.

This directory contains:
- **section_##.Rnw**, the files where the actual content of the paper is written.
- **document_version.Rnw**, the global files calling all the other section files to make up the actual document.
- **compile.sh** is a shell script to compile a pdf of any **document_version.Rnw** (the comments within it describe how to run the shell script). For this script to work the relative paths of files must remain the same as in the original folder.
- **makearxiv.sh** is a shell script to create a zip archive that can be uploaded on arxiv.org and compiled by AutoTeX.
- **bib** is the folder containing the .bib files for the bibliography.
- **code** is the folder containing the R scripts defining the plots.
  The scripts for the simulation study plots use plotting functions that are stored in the script `functions.R`.
- **figure** is the folder where the pictures are stored.
- **style** is the folder containing the .cls and .bst files for general formatting of the manuscript.

# Repository structure

Here is the project structure:
```
├── BMR.Rnw
├── BMR.tex
├── README.md
├── arxiv.Rnw
├── arxiv.tex
├── bib
│   └── bibshelf.bib
├── code
│   ├── functions.R
│   ├── knit-rnw.R
│   ├── plot-convergence-sup.R
│   ├── plot-fdd.R
│   ├── plot-hd.R
│   ├── plot-ld-sup.R
│   └── plot-ld.R
├── compile.sh
├── draft.Rnw
├── draft.tex
├── figure
│   ├── plot-bias-correlation-1.pdf
│   ├── plot-bias-correlation-hd-1.pdf
│   ├── plot-bias-correlation-refs-1.pdf
│   ├── plot-bias-covariance-1.pdf
│   ├── plot-bias-mean-1.pdf
│   ├── plot-bias-variance-1.pdf
│   ├── plot-cic-correlation-1.pdf
│   ├── plot-cic-correlation-hd-1.pdf
│   ├── plot-cic-correlation-refs-1.pdf
│   ├── plot-cic-covariance-1.pdf
│   ├── plot-cic-mean-1.pdf
│   ├── plot-cic-variance-1.pdf
│   ├── plot-ciw-correlation-1.pdf
│   ├── plot-ciw-correlation-hd-1.pdf
│   ├── plot-convergence-case-study-default-yc-1.pdf
│   ├── plot-convergence-case-study-default-yp-1.pdf
│   ├── plot-convergence-case-study-expert-yc-1.pdf
│   ├── plot-convergence-case-study-expert-yp-1.pdf
│   ├── plot-convergence-case-study-pcraux-yc-1.pdf
│   ├── plot-convergence-case-study-pcraux-yp-1.pdf
│   ├── plot-convergence-case-study-si-yc-1.pdf
│   ├── plot-convergence-case-study-si-yp-1.pdf
│   ├── plot-convergence-case-study-vbv-yc-1.pdf
│   ├── plot-convergence-case-study-vbv-yp-1.pdf
│   ├── plot-convergence-sim2-AUX-1.pdf
│   ├── plot-convergence-sim2-MIMI-1.pdf
│   ├── plot-convergence-sim2-MIOP-1.pdf
│   ├── plot-convergence-sim2-MIOR-1.pdf
│   ├── plot-convergence-sim2-VBV-1.pdf
│   ├── plot-fdd-yc-1.pdf
│   ├── plot-fdd-yp-1.pdf
│   ├── plot-time-1.pdf
│   └── plot-time-hd-1.pdf
├── makearxiv.sh
├── pdf
│   ├── BMR.pdf
│   ├── BMR_diff_e756858a0402918014027c8e14e48fdbafd1321c_64cbdd0bfec164c5bac8cc7dd12c730f1006dee6.pdf
│   ├── BMR_diff_e756858a0402918014027c8e14e48fdbafd1321c_d7518bf4e01c992f99105b9f7021256441216ef0.pdf
│   ├── arxiv.pdf
│   ├── draft.pdf
│   ├── journal.pdf
│   ├── response-to-comments.pdf
│   └── sup.pdf
├── rds
│   ├── 20211220_144954_res.rds
│   ├── 8469421_main_gg_shape.rds
│   ├── 8469421_time_gg_shape.rds
│   ├── 9950505_main_gg_shape.rds
│   ├── 9950505_time_gg_shape.rds
│   ├── 9987321_main_gg_shape.rds
│   ├── 9987321_time_gg_shape.rds
│   ├── Rnw-snapshot.rds
│   ├── convergence-default.rds
│   ├── convergence-expert.rds
│   ├── convergence-pcraux.rds
│   ├── convergence-si-4-aux-all.rds
│   ├── convergence-sim2-p242.rds
│   └── convergence-vbv.rds
├── section_01.Rnw
├── section_02.Rnw
├── section_03.Rnw
├── section_04.Rnw
├── section_05.Rnw
├── section_06.Rnw
├── section_abstract.tex
├── section_biblio.tex
├── section_conflict.tex
├── section_funding.tex
├── style
│   ├── asj.bst
│   ├── response.cls
│   └── sagej.cls
├── submissions
│   ├── BRM-round-0
│   │   ├── decision-letter.pdf
│   │   └── draft-proof.pdf
│   ├── BRM-round-1
│   │   ├── cover-letter.docx
│   │   └── response-to-comments.tex
│   ├── arxiv.zip
│   └── feedback
│       ├── v1
│       │   ├── edo_paper2_draft_KS_original.pdf
│       │   ├── original
│       │   │   ├── README.md
│       │   │   ├── edo_paper2_draft-kml.pdf
│       │   │   └── edo_paper2_draft_KS.pdf
│       │   └── working
│       │       ├── KS.pdf
│       │       ├── README.md
│       │       └── kml.pdf
│       └── v2
│           ├── original
│           │   ├── BMR_KS-KML.pdf
│           │   ├── BMR_KS.pdf
│           │   └── README.md
│           └── working
│               ├── BMR_KS-KML.pdf
│               ├── BMR_KS.pdf
│               └── README.md
├── sup.Rnw
├── sup.tex
├── sup_convergence.Rnw
├── sup_study_1.Rnw
├── tmp
└── trackChanges.sh
```