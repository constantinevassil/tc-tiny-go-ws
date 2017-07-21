# tc-tiny-go-ws

 A tiny web server that serves a static file.
 
 ## directory location on host

/tmp/www
 
 ## directory location on container

/www

The web server is looking in logicl volume /www which is mounted to physical
volume /tmp/www on the host.
 
 
# Building Minimal Docker Containers for Go Applications

There official containers for Golang can be quite large. 

When Go apps are build statically with all libraries built in their size 
is kept at the minimum.


## tc-tiny-go-ws

```bash
git clone https://github.com/topconnector/tc-tiny-go-ws.git
cd tc-tiny-go-ws
chmod +x ./bld.bash
```

