world database from http://pgfoundry.org/

to build

```bash
$ docker build -t edc4it/coursedb:2.1  -t edc4it/coursedb:latest  .
```

to run

```bash
$ docker run -p 5432:5432 -Pd --name coursedb edc4it/coursedb

```

Use psql client inside the container

```bash
docker exec -it coursedb psql -U postgres -h localhost -p 5432
```
