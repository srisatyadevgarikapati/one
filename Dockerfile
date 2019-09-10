FROM golang:1.12

RUN mkdir -p $GOPATH/src/one
WORKDIR $GOPATH/src/one

COPY . .
RUN cd $GOPATH/src/one/ && go get

EXPOSE 7777

RUN go get
RUN go build

CMD ["./one"]
