FROM rocker/verse:3.6

RUN apt-get update
# && \
RUN apt-get upgrade -y
#   apt-get -y --no-install-recommends install \
#   libxml2-dev \
#   libcairo2-dev \
#   libsqlite-dev \
#   libmariadbd-dev \
#   libmariadbclient-dev \
#   libpq-dev \
#   libssh2-1-dev \
#   unixodbc-dev \
#   libsasl2-dev \
# &&
RUN install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    BiocManager