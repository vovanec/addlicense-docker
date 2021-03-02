FROM golang:1.13.3-alpine3.10 

RUN apk add --no-cache git

RUN go get -u github.com/vovanec/addlicense

RUN which addlicense

RUN cp /go/bin/addlicense /usr/bin/addlicense

CMD ["addlicense"]

