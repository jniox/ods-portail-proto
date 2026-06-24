# Prototype portail RH ODS — image statique nginx (déployable Coolify/OCI, Cloud Run, etc.)
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Coolify/OCI : exposer le port 80
EXPOSE 80
