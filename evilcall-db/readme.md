generated data from https://www.mockaroo.com/

to build

```shell
$ docker build -t edc4it/evilcall:1.0  -t edc4it/evilcall:latest  .
```

to run

```shell
$ docker run -p 5432:5432 -Pd --name evilcall edc4it/evilcall

```

Use psql client inside the container

```shell
docker exec -it evilcall psql -U postgres -h localhost -p 5432
```
