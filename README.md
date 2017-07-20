# tiny-go-ws

 A tiny web server that serves a static file.
 
 ## directory location on host

/tmp/www
 
 ## directory location on container

/www

The web server is looking in logicl volume /www which is mounted to physical
volume /tmp/www on the host.
 
