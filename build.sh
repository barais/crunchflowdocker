#! /bin/bash
sudo apt-get install -y mercurial
hg clone https://bitbucket.org/crunchflow/crunchtope
cd crunchtope/
sudo apt-get install -y gfortran 
git clone -b maint https://bitbucket.org/petsc/petsc petsc
git checkout 73804e8 # pour revenir à la version de 2016
./configure --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-fblaslapack --with-mpi=0  --with-debugging=0 PETSC_ARCH=linux-gnu-opt
make PETSC_DIR=/home/barais/git/crunchflow/crunchtope/petsc PETSC_ARCH=linux-gnu-opt all
make PETSC_DIR=/home/barais/git/crunchflow/crunchtope/petsc PETSC_ARCH=linux-gnu-opt check
make PETSC_DIR=/home/barais/git/crunchflow/crunchtope/petsc PETSC_ARCH=linux-gnu-opt streams
cd ..
make

