 
FROM mysql:8.0.21

COPY src/ docker-entrypoint-initdb.d/