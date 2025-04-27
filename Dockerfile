FROM nats:alpine3.20
COPY /nats-server.conf /nats-server.conf
EXPOSE 4222 6222 8222
ENTRYPOINT ["nats-server"]  # Remove the leading slash
CMD ["--config", "nats-server.conf"]
