# !/bin/bash


N=6
for diffusion in 5E-6 1E-5 5E-5 1E-4 5E-4 1E-3; do
	for dependence in 0.5 1.0 2.O; do 
		 sem -j${N} "/opt/data/crunchflowdata/executor.sh ${diffusion} ${dependence}"
	done
done
sem --wait
