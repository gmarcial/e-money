FROM golang:1.15.2-alpine
WORKDIR /go/src/app
COPY . .
RUN go get -v -d ./...
RUN CGO_ENABLED=0 GOOS=linux go build -i -a -o emoney ./cmd/test/test.go


FROM alpine:3.12.0
WORKDIR /root/

COPY --from=0 /go/src/app/emoney .
CMD ["./emoney"]