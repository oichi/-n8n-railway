#!/bin/sh
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n
exec runuser -u node -- n8n "$@"
