FROM golang:1.11-alpine
RUN apk update && \
    apk upgrade && \
    apk add git
RUN go get -u github.com/gomods/athens/cmd/proxy
COPY ./config.toml .
CMD ["proxy", "-config_file", "config.toml"]