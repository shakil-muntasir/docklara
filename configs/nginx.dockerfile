FROM nginx:stable-alpine

ARG PUID
ARG PGID

ENV PUID=${PUID}
ENV PGID=${PGID}

# MacOS staff group's Pgid is 20, so is the dialout group in alpine linux. We're not using it, let's just remove it.
RUN delgroup dialout

RUN addgroup -g ${PGID} --system laravel
RUN adduser -G laravel --system -D -s /bin/sh -u ${PUID} laravel
RUN sed -i "s/user  nginx/user laravel/g" /etc/nginx/nginx.conf

ADD ./nginx/default.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/html