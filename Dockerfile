FROM       scratch
MAINTAINER Constantine Vassil <constantine@mobiledatabooks.com>

ADD        tc-tiny-go-ws tc-tiny-go-ws
EXPOSE     8080
ENTRYPOINT ["/tc-tiny-go-ws"]
