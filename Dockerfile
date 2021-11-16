#FROM ghost:4.20.4
FROM ghost:3.42
COPY content/ /var/lib/ghost/content/
