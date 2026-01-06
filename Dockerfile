FROM n8nio/n8n:1.117.2

USER node

# Habilitar community packages
ENV N8N_COMMUNITY_PACKAGES_ENABLED=true

# Instalar community nodes correctamente (registra installedPackages.json)
RUN n8n community-packages install n8n-nodes-serpapi && \
    n8n community-packages install n8n-nodes-upload-post

EXPOSE 5678

