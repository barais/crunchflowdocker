#! /bin/bash
export diffusion=$1
export dependence=$2
docker run -t -v /var/run/docker.sock:/var/run/docker.sock alexellis2/jaas run -r -t=1000s --env RES=res_dif${diffusion}_dep${dependence} --env DIFFUSION=${diffusion} --env DEPENDANCE=${dependence}   -m /opt/data/crunchflowdata=/data -i barais/crunchtop -d "sh /data/execute.sh"
 
