FROM golang:1.17 as builder

WORKDIR /src

COPY go.mod .
COPY go.sum .

RUN go mod download github.com/CaiJimmy/hugo-theme-stack/v3@v3.20.0

FROM jakejarvis/hugo-extended:latest

COPY --from=builder /go/pkg/mod /go/pkg/mod

WORKDIR /src

COPY . .

RUN hugo mod get -u