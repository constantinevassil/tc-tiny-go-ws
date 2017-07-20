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

1. Create folder:
```bash
mkdir /tmp/www
```

2. In the /tmp/www folder, create an index.html file:

```bash
echo 'Hello from Kubernetes storage of tc-tiny-go-ws v.1.0' > /tmp/www/index.html
cat /tmp/www/index.html
```

3. Test on Mac:

```bash
CGO_ENABLED=0 go build -a -tags netgo -ldflags '-w' .
./tc-tiny-go-ws
```
Started, serving at 8080

Open in browser:

http://localhost:8080


4. Update the index.html file:

```bash
echo 'Hello from Kubernetes storage of tc-tiny-go-ws v.2.0' > /tmp/www/index.html
cat /tmp/www/index.html
```

Open in browser:

http://localhost:8080

Server is running, the static file is updated, the browser is showing the new static file.

5. Test in Docker:

```bash
docker run -p 8080:8080 topconnector/tc-tiny-go-ws:v1
```

