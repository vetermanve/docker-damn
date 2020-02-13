# docker-damn
Damn simple docker repository with docker hub CD

## Damn start using only `docker`
```
docker build .
```
Example:
```log
$ docker build .
Sending build context to Docker daemon   68.1kB
Step 1/4 : FROM debian:10
 ---> a8797652cfd9
Step 2/4 : ADD damn.sh /root/
 ---> 5c839a640c57
Step 3/4 : WORKDIR /root/
 ---> Running in 0ffba5fd3dea
Removing intermediate container 0ffba5fd3dea
 ---> a5708ea2dc8c
Step 4/4 : ENTRYPOINT ["/root/damn.sh"]
 ---> Running in d871a61a5e55
Removing intermediate container d871a61a5e55
 ---> 245947a8c768
Successfully built 245947a8c768
```
Then run
```
docker run 245947a8c768 
```
`245947a8c768` is a result id from docker build: `Successfully built 245947a8c768`

Example
```log
$ docker run 245947a8c768
Tap CTRL-C to Damn exit
Damn! It's already 11:14:32 of 2020-02-13!
Damn! It's already 11:14:35 of 2020-02-13!
Damn! It's already 11:14:38 of 2020-02-13!
^C
```
## Damn start using `docker-compose`
Run
```log
$ dc up --build
```
Example
```log
$ dc up --build
Building damn
Step 1/4 : FROM debian:10
 ---> a8797652cfd9
Step 2/4 : ADD damn.sh /root/
 ---> f950e6e1abdd
Step 3/4 : WORKDIR /root/
 ---> Running in 728e82f34921
Removing intermediate container 728e82f34921
 ---> ea299a5af010
Step 4/4 : ENTRYPOINT ["/root/damn.sh"]
 ---> Running in 1751c52aa42f
Removing intermediate container 1751c52aa42f
 ---> fcd0c3c56a5b
Successfully built fcd0c3c56a5b
Successfully tagged docker-damn_damn:latest
Recreating damn ... done
Attaching to damn
damn    | Tap CTRL-C to Damn exit
damn    | Damn! It's already 11:10:44 of 2020-02-13
^CGracefully stopping... (press Ctrl+C again to force)
Stopping damn   ... done
```
Enjoy!