FROM golang:latest as builder
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o momo-store-backend ./cmd/api

FROM debian:sid-slim
WORKDIR /app
COPY --from=builder /app/momo-store-backend .
CMD ["./momo-store-backend"]
EXPOSE 8081