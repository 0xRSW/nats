FROM nats:alpine3.20
COPY /nats-server.conf /nats-server.conf
EXPOSE 4222 6222 8222
CMD ["/nats-server", "--config", "/nats-server.conf"]
