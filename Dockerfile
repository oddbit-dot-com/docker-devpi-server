FROM python:3.9

RUN pip install devpi-server devpi-web
WORKDIR /root
VOLUME /root/.devpi
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["devpi-server", "--host", "0.0.0.0"]
