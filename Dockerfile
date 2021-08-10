FROM node:12-alpine

ARG INSO_VERSION=2.3.0
ARG INSO_PLUGIN_DOTENV_VERSION=1.2.0
RUN apk add --no-cache --virtual .build-deps alpine-sdk python && \
    npm i --unsafe-perm -g insomnia-inso@${INSO_VERSION} insomnia-plugin-dotenv@${INSO_PLUGIN_DOTENV_VERSION} && \
    mkdir /work && \
    apk del .build-deps

WORKDIR /work

COPY inso-wrap.sh /

ENTRYPOINT [ "/inso-wrap.sh" ]
