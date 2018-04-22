# About my dockerfile
# directive=value
FROM ubuntu
MAINTAINER Olivier Barais version: 0.1
ADD ./crunchtope /opt/crunchtope
RUN apt-get update && apt-get install -y gfortran  libx11-6 libssl1.0.0
ENV LD_LIBRARY_PATH=/opt//crunchtope/petsc/linux-gnu-opt/lib/
CMD ["/opt/crunchtope/CrunchTope"]

