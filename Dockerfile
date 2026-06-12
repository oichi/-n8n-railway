FROM n8nio/n8n:latest

USER root

RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'chown -R node:node /home/node/.n8n' >> /entrypoint.sh && \
    echo 'exec su-exec node n8n' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

RUN apk add --no-cache su-exec

ENTRYPOINT ["/entrypoint.sh"]
