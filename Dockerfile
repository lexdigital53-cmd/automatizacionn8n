FROM n8nio/n8n:1.117.2

USER root

# Crear carpeta correcta para community nodes
RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm init -y && \
    npm install \
      n8n-nodes-serpapi \
      n8n-nodes-upload-post

# Permisos
RUN chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678
