to build

```bash
$ docker build -t edc4it/sessiondb:1.0  -t edc4it/sessiondb:latest  .
```

to run

```bash
$ docker run -p 5432:5432 -Pd --name sessiondb edc4it/sessiondb

```

Use psql client inside the container

```bash
docker exec -it sessiondb psql -U postgres -h localhost -p 5432
```
