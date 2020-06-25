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
# Install the latest version of Bioconductor
# See https://www.bioconductor.org/install/ for the latest release
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(version = "3.11")
# Bioconductor
biocpackages <- c("limma", "edgeR", "SingleCellExperiment")
ipak(biocpackages, repository = "Bioconductor")
# CRAN packages
cranpackages <- c("tidyverse", "data.table", "writexl")
ipak(cranpackages, repository = "CRAN")
# GitHub
githubpackages <- c("nanxstats/ggsci", "slowkow/ggrepel", "mdozmorov/MDtemplate")
ipak(githubpackages, repository = "github")
# RnBeads special installation of many genomics packages
source("http://rnbeads.org/data/install.R")
```

- `save_res` - A function to save a data frame or a matrix into an Excel file. Legacy function for compatibility with old code. Use `writexl::write_xlsx()` instead
