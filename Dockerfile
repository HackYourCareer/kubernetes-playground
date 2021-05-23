FROM golang:latest
COPY app.go app.go
CMD go run app.go