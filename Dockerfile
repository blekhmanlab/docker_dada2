FROM bioconductor/bioconductor_docker:RELEASE_3_10

LABEL org.label-schema.schema-version = "1.0.0-rc.1"

LABEL org.label-schema.vendor = "Blekhman Lab"
LABEL org.label-schema.name = "dada2"
LABEL org.label-schema.description = "Contains R and the DADA2 package (plus dependencies), used for 'fast and accurate sample inference from amplicon data with single-nucleotide resolution.'"
LABEL org.label-schema.vcs-url = "https://github.com/blekhmanlab/docker_dada2"
LABEL org.label-schema.url = "https://benjjneb.github.io/dada2/"
LABEL maintainer="rabdill@umn.edu"

# this "version" label reflects the installed version of DADA2:
LABEL org.label-schema.version = "1.14.0"

RUN R -e 'BiocManager::install("dada2", version="3.10", update=TRUE, ask=FALSE)'
RUN R -e 'BiocManager::install("decontam", version="3.10", update=TRUE, ask=FALSE)'

CMD ["R"]
