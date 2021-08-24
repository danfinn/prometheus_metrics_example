FROM golang:1.17.0-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY main.go ./

RUN go build -o /prometheus-metrics-example

EXPOSE 2112

CMD [ "/prometheus-metrics-example" ]
