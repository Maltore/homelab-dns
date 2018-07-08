FROM raspbian/jessie
RUN apk add --update unbound
RUN rm -rf /var/cache/apk/*

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
