# Requires assets generated locally using: `bin/nabu prebuildProd`
ARG GO_VERSION=1
FROM golang:${GO_VERSION}-bookworm as builder

WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
RUN go build -v -o /moreplease .

FROM debian:bookworm
RUN apt update && apt install -y ca-certificates
RUN mkdir -p etc
COPY config/prod.json /usr/local/etc/moreplease-config.json

COPY --from=builder /moreplease /usr/local/bin/
CMD ["moreplease", "-config", "/usr/local/etc/moreplease-config.json"]
