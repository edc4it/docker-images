FROM postgres:9.4

COPY db/structure.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_PASSWORD=postgres

# RUN sed -ri 's/#(log_statement) .*$/\1 = all/' /var/lib/postgresql/data/postgresql.conf
