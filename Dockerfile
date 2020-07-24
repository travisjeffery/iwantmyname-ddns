FROM alpine:3.8
COPY entrypoint.sh /entrypoint.sh
RUN apk add --update curl && rm -rf /var/cache/apk/*
ENTRYPOINT ["/entrypoint.sh"]