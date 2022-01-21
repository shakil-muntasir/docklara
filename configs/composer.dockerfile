FROM composer:2

ARG PUID
ARG PGID

ENV PUID=${PUID}
ENV PGID=${PGID}

# MacOS staff group's gid is 20, so is the dialout group in alpine linux. We're not using it, let's just remove it.
RUN delgroup dialout

RUN addgroup -g ${PGID} --system laravel
RUN adduser -G laravel --system -D -s /bin/sh -u ${PUID} laravel

WORKDIR /var/www/html
