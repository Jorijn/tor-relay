FROM alpine:latest

RUN apk update \
    && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/community tor \
    && rm -rf /var/cache/apk/*

EXPOSE 9001

COPY torrc /etc/tor/torrc

RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT [ "tor" ]