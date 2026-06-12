#!/bin/sh
mkdir -p /home/node/.n8n
chown -R node:node /home/node
exec su-exec node n8n "$@"
