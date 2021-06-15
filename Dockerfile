FROM alpine:latest
RUN apk add --no-cache curl jq
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
