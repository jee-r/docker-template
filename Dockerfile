FROM alpine:3.18

LABEL name="docker-<PROJECT_NAME>" \
      maintainer="Jee jee@jeer.fr" \
      description="<PROJECT_SHORT_DESCRIPTION>" \
      url="<>PROJECT_URL>" \
      org.label-schema.vcs-url="https://github.com/jee-r/docker-<PROJECT_NAME>" \
      org.opencontainers.image.source="https://github.com/jee-r/docker-<PROJECT_NAME>"

WORKDIR <WORKDIR>

COPY rootfs /

RUN rm -rf /tmp/*


VOLUME []

STOPSIGNAL SIGQUIT

ENTRYPOINT []
CMD []