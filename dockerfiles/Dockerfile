FROM rocker/geospatial:4.1.0

COPY scripts /scripts

RUN ./scripts/install_mapsf.sh

COPY --chown=rstudio make_a_map /home/rstudio/make_a_map/

