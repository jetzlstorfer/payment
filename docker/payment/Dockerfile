FROM golang:1.7

RUN mkdir /app
COPY payment/ /go/src/github.com/microservices-demo/payment

RUN go get -u github.com/FiloSottile/gvt
RUN cd /go/src/github.com/microservices-demo/payment/ && gvt restore
RUN ls -lsa /go/src/github.com/microservices-demo/payment

RUN GOOS=linux go build -a -ldflags -linkmode=external -installsuffix cgo -o /app/main github.com/microservices-demo/payment/cmd/paymentsvc

CMD ["/app/main", "-port=8080"]

#EXPOSE 80
