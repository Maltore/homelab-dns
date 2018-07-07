FROM alpine:3.8@sha256:7043076348bf5040220df6ad703798fd8593a0918d06d3ce30c6c93be117e430

RUN apk add --update unbound ; \
	rm -rf /var/cache/apk/* ;

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
