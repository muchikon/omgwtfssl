FROM alpine:3.13.5

RUN apk --update add bash openssl

WORKDIR /certs

COPY generate-certs /usr/local/bin/generate-certs

RUN chmod +x /usr/local/bin/generate-certs

CMD /usr/local/bin/generate-certs

VOLUME /certs
