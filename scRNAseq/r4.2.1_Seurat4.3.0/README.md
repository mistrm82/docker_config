# docker_scrnaseq

Creaed fo Visium data analysis

## Created 2023-05-19
- basic rstudio install
- initial R packages for Visium scRNAseq analysis
- CRAN:  Seurat, SeuraObject, patchwork, tidyverse, knitr, gridExtra, DT, scCustomize, (viridisLite
- BioC: AnnotationHub, ensembldb



## Important features:
- R 4.2.1
- Bioconductor 3.16



**To build image:**

```
docker build --tag singlecell_r4.2.1 Docker/ # last argument is a directory that contains the Dockerfile
```

**To use image:**

```
docker run -d -p 8787:8787 -e PASSWORD=mypassword singlecell_r4.2.1
```

**To mount a local folder to access in RStudio:**

```
# add an argument

-v /path/to/local/folder:/home/rstudio
```

Navigate to browser: http://localhost:8787/

