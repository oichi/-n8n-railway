#!/bin/sh
mkdir -p /home/node/.n8n
chmod 777 /home/node/.n8n
exec n8n "$@"
