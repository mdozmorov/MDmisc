# MD helper functions

Lightweight version of the `MDmisc` R package containing various helper functions for computational genomics research. [Old version](https://github.com/mdozmorov/MDgenomerunner)

## Installation

```
if (!require('devtools')) install.packages('devtools')
devtools::install_github('mdozmorov/MDmisc')
```

## Functions

- `pca_func` - PCA plot with groups wrapped into ellipses. `pca_func(iris[, 1:3], groups = iris$Species, title = "Iris")`

![](inst/pca_func.png)

- `ipak` - Unified installer for CRAN, Bioconductor, and GitHub packages. Depreciated, use `BiocManager::install(c("tidyverse", "blogdown", "xaringan", "xaringanthemer"))` to install packages from Bioconductor, CRAN, and GitHub. 
```
# Install the latest version of Bioconductor
# See https://www.bioconductor.org/install/ for the latest release
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(version = "3.11")
# Bioconductor
biocpackages <- c("limma", "edgeR", "SingleCellExperiment", "clusterProfiler")
ipak(biocpackages, repository = "Bioconductor")
# CRAN packages
cranpackages <- c("tidyverse", "data.table", "caret", "e1071", "writexl", "enrichR", "xaringan", "cowplot", "pander", "survminer")
ipak(cranpackages, repository = "CRAN")
# GitHub
githubpackages <- c("nanxstats/ggsci", "slowkow/ggrepel", "mdozmorov/MDtemplate", "mdozmorov/MDmisc")
ipak(githubpackages, repository = "github")
# RnBeads special installation of many genomics packages
source("http://rnbeads.org/data/install.R")
```

- `save_res` - A function to save a data frame or a matrix into an Excel file. Legacy function for compatibility with old code. Depreciated, use `writexl::write_xlsx()`

## Notes

[How to remove all user installed packages in R](https://www.r-bloggers.com/2016/10/how-to-remove-all-user-installed-packages-in-r/)

``` r
# create a list of all installed packages
ip <- as.data.frame(installed.packages())
head(ip)
# if you use MRO, make sure that no packages in this library will be removed
ip <- subset(ip, !grepl("MRO", ip$LibPath))
# we don't want to remove base or recommended packages either\
ip <- ip[!(ip[,"Priority"] %in% c("base", "recommended")),]
# determine the library where the packages are installed
path.lib <- unique(ip$LibPath)
# create a vector with all the names of the packages you want to remove
pkgs.to.remove <- ip[,1]
head(pkgs.to.remove)
# remove the packages
sapply(pkgs.to.remove, remove.packages, lib = path.lib)
```
