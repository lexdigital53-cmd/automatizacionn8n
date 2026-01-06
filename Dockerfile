FROM n8nio/n8n:1.117.2

USER root

# Instalar community nodes correctamente
RUN cd /home/node/.n8n && \
    npm install \
      n8n-nodes-upload-post \
      n8n-nodes-serpapi

# Permisos correctos
RUN chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678





