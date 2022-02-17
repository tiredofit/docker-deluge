FROM tiredofit/novnc:alpine
LABEL maintainer="Dave Conroy (github.com/tiredofit)"

ENV IMAGE_NAME=tiredofit/deluge \
    IMAGE_REPO_URL=https://github.com/tiredofit/docker-deluge

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add -t .deluge-run-deps \
               deluge \
               && \
    rm -rf /var/cache/apk/*

ADD install/ /
