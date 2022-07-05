FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/nish.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/nish

COPY nish.sh /usr/bin/nish.sh
RUN chmod +x /usr/bin/nish.sh
COPY target/nish.jar /usr/share/nish/nish.jar