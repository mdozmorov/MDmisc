# MD helper functions

Lightweight version of the `MDmisc` R package containing various helper functions for computational genomics research. [Old version](https://github.com/mdozmorov/MDgenomerunner)

## Installation

```
if (!require('devtools')) install.packages('devtools')
devtools::install_github('mdozmorov/MDmisc')
```

## Functions

- `ipak` - Unified installer for CRAN, Bioconductor, and GitHub packages
```
# CRAN packages
cranpackages <- c("tidyverse", "data.table", "writexl")
ipak(cranpackages, repository = "CRAN")
# Bioconductor
biocpackages <- c("limma", "SingleCellExperiment")
ipak(biocpackages, repository = "Bioconductor")
# GitHub
githubpackages <- c("nanxstats/ggsci", "slowkow/ggrepel", "mdozmorov/MDtemplate")
ipak(githubpackages, repository = "github")
# RnBeads special installation of many genomics packages
source("http://rnbeads.org/data/install.R")
```

