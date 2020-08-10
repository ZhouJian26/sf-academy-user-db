
FROM mysql:8.0.20
COPY sql/ docker-entrypoint-initdb.d/
