#' Unified installer for CRAN, Bioconductor, and GitHub packages
#'
#' Takes a vector of package names and installs them.
#' Requires specifying repository type.
#' @param pkg package names in a character vector
#' @param repository one of "CRAN", "Bioconductor", "github".
#' Indicates from which repository to install packages.
#' @importFrom utils install.packages installed.packages
#'
#' @export
#' @examples
#' \dontrun{
#' # CRAN packages
#' cranpackages <- c("tidyverse", "data.table")
#' ipak(cranpackages, repository = "CRAN")
#' # Bioconductor
#' biocpackages <- c("limma", "SingleCellExperiment")
#' ipak(biocpackages, repository = "Bioconductor")
#' # GitHub
#' githubpackages <- c("nanxstats/ggsci", "slowkow/ggrepel")
#' ipak(githubpackages, repository = "github")
#' }
#' @note Modified after \href{https://bvieth.github.io/powsimR/}{powsimR installation instructions}
#'

ipak <- function(pkg, repository = c("CRAN", "Bioconductor", "github")) {
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  # new.pkg <- pkg
  if (length(new.pkg)) {
    if (repository == "CRAN") {
      install.packages(new.pkg, dependencies = TRUE)
    }
    if (repository == "Bioconductor") {
        if (!requireNamespace("BiocManager")) {
          install.packages("BiocManager")
        }
        BiocManager::install(new.pkg, dependencies = TRUE, ask = FALSE)
    }
    if (repository == "github") {
      if (!requireNamespace("devtools")) {
        install.packages("devtools")
      }
      devtools::install_github(new.pkg, build_vignettes = FALSE, force = FALSE,
                               dependencies = TRUE)
    }
  }
}
