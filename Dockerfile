FROM alpine:latest

RUN apk add --no-cache \
    sqlite \
    wget \
    bash \
    openssl
RUN wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64  && \
    mv gdrive-linux-x64 gdrive && \
    chmod +x gdrive && \
    mv gdrive /usr/local/bin/gdrive && \
    mkdir ~/.gdrive