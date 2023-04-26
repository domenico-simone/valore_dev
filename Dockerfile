FROM rocker/verse:4.3.0

RUN install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools

RUN install2.r --error \
    BiocManager

RUN R -q -e "BiocManager::install('phyloseq')"

#RUN /usr/local/lib/R/site-library/littler/examples/installBioc.r phyloseq
