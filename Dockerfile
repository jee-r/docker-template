FROM j33r/<BASE_IMAGE>:<TAG_IMAGE>

LABEL name="docker-<PROJECT_NAME>" \
      maintainer="Jee jee@jeer.fr" \
      description="<PROJECT_SHORT_DESCRIPTION" \
      url="<PROJECT_URL>" \
      org.label-schema.vcs-url="https://github.com/jee-r/docker-<PROJECT_NAME>"

COPY rootfs /

RUN rm -rf /tmp/*

WORKDIR <WORKDIR>

STOPSIGNAL SIGQUIT
VOLUME []
ENTRYPOINT []
