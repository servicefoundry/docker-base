#
# Base Docker Image for Service Foundry Platform
#
# VERSION : 1.0
#
FROM alpine:3.4

MAINTAINER Service Foundry Team <service.foundry@gmail.com>

ENV REFRESHED_AT 2016-10-10

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# Install utility tools
RUN set -x \
    && apk add --no-cache \
        gnupg \
        git \
        subversion \
        openssh-client \
        curl \
        tar \
        zip \
        unzip \
        bash \
        ttf-dejavu \
        coreutils \
        python \
    && python -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip install --upgrade pip setuptools \
    && rm -r /root/.cache

# Working Directory
WORKDIR /data

# Entry Point
CMD ["bash"]