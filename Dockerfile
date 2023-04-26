FROM rocker/verse:4.0.0

RUN R -q -e 'remove.packages("BiocVersion")' && \
    install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    BiocManager
