FROM golang:latest

WORKDIR /app

COPY . .

# Download and install dependencies
RUN go get -d -v ./...

# Build the go app
RUN go build -o api

EXPOSE 8000

CMD ["./api"]