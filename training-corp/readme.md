generated data from https://www.mockaroo.com/

to build

```shell
$ docker build -t edc4it/traindb:1.0  -t edc4it/traindb:latest  .
```

to run

```shell
$ docker run -p 5432:5432 -P --rm --name traindb edc4it/traindb

```

Use psql client inside the container

```shell
docker exec -it traindb psql -U postgres -h localhost -p 5432
```
