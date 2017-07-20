FROM       scratch
MAINTAINER Constantine Vassil <constantine@mobiledatabooks.com>

ADD        tiny-go-ws tiny-go-ws
EXPOSE     8080
ENTRYPOINT ["/tiny-go-ws"]
