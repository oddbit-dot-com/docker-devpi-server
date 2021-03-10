FROM python:3.9

RUN pip install devpi-server devpi-web

ENV DEVPI_CONFIG=/etc/devpi-config.yml

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY start-devpi-server.sh /start-devpi-server.sh
COPY devpi-server.yml $DEVPI_CONFIG

VOLUME /devpi
WORKDIR /devpi

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["sh", "/start-devpi-server.sh"]
