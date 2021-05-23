FROM golang:latest as builder
COPY app.go app.go
RUN CGO_ENABLED=0 go build -o app app.go

FROM scratch
COPY --from=builder /go/app .

ENTRYPOINT ["/app"]