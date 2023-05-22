if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
suppressWarnings(BiocManager::install())


pkgs_to_install <- c("remotes","tidyverse","tibble","RCurl", "Seurat", "patchwork", "knitr", "gridExtra", "DT", "scCustomize", "viridisLite",
"cowplot","SingleCellExperiment","scater","reticulate", "AnnotationHub",
"ensembldb", "rio","devtools","XLConnect","janitor",
"pheatmap","DESeq2","reshape", "limma", "glmGamPoi"
)

## Start the actual installation:

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {  install.packages(packages[!installed_packages]) }

ok <- BiocManager::install(pkgs_to_install, update=FALSE, ask=FALSE) %in% rownames(installed.packages())
if (!all(ok))
    stop("Failed to install:\n  ",
         paste(pkgs_to_install[!ok], collapse="  \n  "))

suppressWarnings(BiocManager::install(update=TRUE, ask=FALSE))

