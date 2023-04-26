FROM rocker/verse:4.3.0

RUN install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    littler

RUN install2.r --error \
    BiocManager

RUN /usr/local/lib/R/site-library/littler/examples/installBioc.r phyloseq
