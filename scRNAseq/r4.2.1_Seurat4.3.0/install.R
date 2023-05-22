if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
suppressWarnings(BiocManager::install())

install.packages(c("Seurat", "scCustomize")) # Separate because had unknown issues

pkgs_to_install <- c("remotes","tidyverse","tibble","RCurl", "patchwork", "knitr", "gridExtra", "DT", "viridisLite",
"cowplot","SingleCellExperiment","scater","reticulate", "AnnotationHub",
"ensembldb", "rio","devtools","XLConnect","janitor",
"pheatmap","DESeq2","reshape", "limma", "glmGamPoi")

## Start the actual installation:

# Start wih CRAN
installed_packages <- pkgs_to_install %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {  install.packages(pkgs_to_install[!installed_packages]) }

# Install packages not yet installed with BioC
bioc <- sapply(pkgs_to_install, function(x){requireNamespace(x, quietly = TRUE)})
bioc

for(p in names(bioc[which(!bioc)])){
  BiocManager::install(p, quiet = TRUE)
}

]

suppressWarnings(BiocManager::install(update=TRUE, ask=FALSE))
