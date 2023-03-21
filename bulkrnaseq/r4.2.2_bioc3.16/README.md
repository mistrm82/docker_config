# docker_rnaseq

## Created 2023-03-21
- basic rstudio install
- initial R packages for RNAseq
- CRAN:  devtools, tidyverse, knitr, gridExtra, RColorBrewer, png, ggrepel, pheatmap, VennDiagram 
- BioC: SummarizedExperiment, DESeq2, AnnotationHub, ensembldb
 

## Important features:
- R 4.2.2
- Bioconductor 3.16


**To build image:**

```
docker build --tag bulkrnaseq_R_4.2.2 Dockerfile
```

**To use image:**

```
docker run -d -p 8787:8787 -e PASSWORD=mypassword bulkrnaseq_R_4.2.2
```
