FROM rocker/rstudio:4.1.1

MAINTAINER Meeta Mistry <meeta.mistry@gmail.com>

ARG bioc_ver=3.14

RUN apt-get clean all && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        libhdf5-dev \
        libcurl4-gnutls-dev \
        libssl-dev \
        libxml2-dev \
        libpng-dev \
        libxt-dev \
        zlib1g-dev \
        libbz2-dev \
        liblzma-dev \
        libglpk40 \
        libgit2-dev \
    && apt-get clean all && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN install2.r --error \
  --deps TRUE \
  devtools \
  tidyverse \
  knitr \
  gridExtra \
  RColorBrewer \
  png \
  ggrepel \
  pheatmap \
  VennDiagram 

RUN Rscript -e 'requireNamespace("BiocManager"); BiocManager::install();' \
&& Rscript -e 'requireNamespace("BiocManager"); BiocManager::install(c("SummarizedExperiment", "DESeq2", "AnnotationHub", "ensembldb"))' 

