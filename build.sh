#! /bin/bash
sudo apt-get install -y mercurial
hg clone https://bitbucket.org/crunchflow/crunchtope
cd crunchtope/
sudo apt-get install -y gfortran 
git clone -b maint https://bitbucket.org/petsc/petsc petsc
cd petsc
git checkout 73804e8 # pour revenir à la version de 2016
./configure --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-fblaslapack --with-mpi=0  --with-debugging=0 PETSC_ARCH=linux-gnu-opt
make PETSC_DIR=`pwd` PETSC_ARCH=linux-gnu-opt all
make PETSC_DIR=`pwd` PETSC_ARCH=linux-gnu-opt check
make PETSC_DIR=`pwd` PETSC_ARCH=linux-gnu-opt streams
cd ..
export PETSC_DIR=`pwd`/petsc
export PETSC_ARCH=linux-gnu-opt
make
