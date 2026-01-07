FROM n8nio/n8n:1.117.2

USER root

# Definir carpeta de usuario de n8n
ENV N8N_USER_FOLDER=/home/node/.n8n
ENV N8N_COMMUNITY_PACKAGES_ENABLED=true

# Instalar community nodes en la carpeta que n8n usa
RUN cd /home/node/.n8n && \
    npm install n8n-nodes-serpapi n8n-nodes-upload-post && \
    chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678
