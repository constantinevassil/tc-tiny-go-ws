# tiny-go-ws

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


## helloworld-go-ws

git clone https://github.com/topconnector/tiny-go-ws.git

cd tiny-go-ws

Test on Mac:

```bash
CGO_ENABLED=0 go build -a -tags netgo -ldflags '-w' .
./tiny-go-ws
```
Started, serving at 8080

Open in browser:

http://localhost:8080

Test with Docker:

```bash
docker run -p 8080:8080 topconnector/tiny-go-ws:v1
```

