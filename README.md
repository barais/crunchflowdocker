# crunchflowdocker

This repository provides some scripts to build a container for [CrunchFlow](http://www.csteefel.com/)

To build CrunchFlow, on linux just run build.sh script. To build the container just run 

```bash
docker build -t yourname/crunchflow .
```

To run the docker 

```bash
docker run -t -i -v "YOURFOLDERWITHDATA":/data -w /data barais/crunchtop 
```
