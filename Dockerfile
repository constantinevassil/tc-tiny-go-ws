FROM       scratch
ADD        tiny-go-ws tiny-go-ws
EXPOSE     8080
ENTRYPOINT ["/tiny-go-ws"]
