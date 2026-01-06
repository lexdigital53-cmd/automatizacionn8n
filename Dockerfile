FROM n8nio/n8n:1.117.2

USER root

# Instalar community nodes donde n8n los busca
RUN cd /home/node/.n8n && \
    npm install \
      n8n-nodes-serpapi \
      n8n-nodes-upload-post

RUN chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678





