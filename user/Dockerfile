FROM alpine:latest
WORKDIR /app

RUN apk add libc6-compat --no-cache  
RUN apk add curl tcpdump ngrep --no-cache

COPY user .
RUN chmod +x user
CMD "./user"