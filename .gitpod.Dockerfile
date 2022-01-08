ARG BASE_CONTAINER=rocker/verse:4.0.4
FROM $BASE_CONTAINER

RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_cran("dockerfiler")'
RUN R -e 'remotes::install_cran("devtools")'
# ENV R_LIBS_USER=/home/gitpod/libs
# ENV "PASSWORD"="password"
EXPOSE 8787

# USER gitpod

# RUN echo "R_LIBS_USER=/home/gitpod/libs" >> /home/gitpod/.Renviron
ENV R_LIBS_USER=/home/gitpod/libs
# ENV R_PROFILE=/workspace/tidytuesdays-distill/.Rprofile

COPY .Rprofile /usr/local/lib/R/etc/Rprofile.site 
COPY .Rprofile /home/rstudio/.Rprofile
# COPY .Rprofile /home/gitpod/.Rprofile

# USER root