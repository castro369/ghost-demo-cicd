#FROM ghost:alpine
FROM ghost:3.42-alpine
COPY content/ /var/lib/ghost/content/

ENV database__connection__host=${DB_HOST}
ENV database__connection__port=${DB_PORT}
ENV database__connection__user=${DB_USER}
ENV database__connection__password=${DB_PASS}
ENV database__connection__database=${DB_NAME}
