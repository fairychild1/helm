FROM alpine:3.3

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

ENV HOME /tmp

COPY tiller /tiller

EXPOSE 44134

CMD ["/tiller"]
