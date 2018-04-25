#! /bin/bash
cd /data 
mkdir /tmp/compute 
cp * /tmp/compute 
cd /tmp/compute 
sed -i -e "s/<?D?>/$DIFFUSION/g" ./airrevers_case2.in
sed -i -e "s/<?DEPENDANCE?>/$DEPENDANCE/g" ./datacom.dbs
/opt/crunchtope/CrunchTope 
mkdir -p /data/crunchtop/$RES 
cp -r *.out /data/crunchtop/$RES 
cp -r *.txt /data/crunchtop/$RES
