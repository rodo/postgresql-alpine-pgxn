ARG BASE_IMAGE=postgres:17.4-alpine3.21

FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.authors="rodolphe@quiedeville.org"

# Install required dependencies
RUN apk --no-cache --update add \
    python3 \
    py3-pip

RUN pip install pgxnclient --break-system-packages
