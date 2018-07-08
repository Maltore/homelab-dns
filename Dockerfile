FROM arm32v6/alpine:3.8@sha256:78f3ccd48cc6a55709b65c8fdb3ef81ed922c5393b064d63b0d35f51e0c9fb2e
RUN apk add --update unbound ; \
	rm -rf /var/cache/apk/* ;COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
