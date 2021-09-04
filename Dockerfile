FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
WORKDIR/app

COPY go.mod.

RUN go mod download 

COPY..
ENV PORT 8080

RUN go build 

CMD ["./main"]

EXPOSE 8080

ENTRYPOINT [ "/build/main/main/gin" ]