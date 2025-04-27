FROM nats:alpine3.20
COPY /nats-server.conf /nats-server.conf
EXPOSE 4222 6222 8222

RUN which nats-server > /tmp/nats-path && ln -sf $(cat /tmp/nats-path) /nats-server

CMD ["/nats-server", "--config", "/nats-server.conf"]

