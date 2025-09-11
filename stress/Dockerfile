FROM alpine:latest
WORKDIR /app

RUN apk add libc6-compat --no-cache  
RUN apk add curl tcpdump ngrep --no-cache

COPY stress .
RUN chmod +x stress
CMD "./stress"