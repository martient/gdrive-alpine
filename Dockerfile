FROM alpine:latest

RUN apk add --no-cache \
    sqlite \
    wget \
    bash \
    openssl \
    ca-certificates
RUN wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-rpi  && \
    mv gdrive-linux-rpi gdrive && \
    chmod +x gdrive && \
    mv gdrive /usr/local/bin/gdrive && \
    mkdir ~/.gdrive