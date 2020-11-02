FROM golang:latest

COPY . /app/

ENV GOPATH /app

RUN go get github.com/gorilla/mux
RUN go get go.mongodb.org/mongo-driver/mongo

CMD ["go", "run", "/app/main.go"]
