FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache util-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
