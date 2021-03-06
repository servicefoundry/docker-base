#
# Base Docker Image for Service Foundry Platform
#
# VERSION : 1.0
#
FROM alpine:3.4

MAINTAINER Service Foundry Team <service.foundry@gmail.com>

ENV REFRESHED_AT 2016-11-11

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# Install utility tools
RUN set -x \
    && apk add --no-cache \
        bash \
        curl \
        gnupg \
        tar

# Working Directory
WORKDIR /data

# Entry Point
CMD ["bash"]