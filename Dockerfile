FROM n8nio/n8n:1.117.2

# Imagen oficial, sin apt-get ni apk
USER root

# Librerías Node + nodos community
RUN npm install -g \
  axios \
  lodash \
  moment \
  n8n-nodes-serpapi \
  n8n-nodes-upload-post

USER node




