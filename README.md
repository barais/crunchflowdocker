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


This repository also share some script files to automate the running of tasks on top of docker swarm using 
[jaas](https://github.com/alexellis/jaas) and parallels [1]

[1] O. Tange (2011): GNU Parallel - The Command-Line Power Tool ;login: The USENIX Magazine, February 2011:42-47.

