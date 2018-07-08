FROM raspbian/jessie
RUN apt-get update
RUN apt-get install unbound

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
