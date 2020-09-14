# postgres-scratch
Scratchpad for postgres.

Requires:
docker
docker-compose
bash

Downloading the repository:

```bash
# Clone repository:
git clone git@github.com:Chumbaloo/postgres-scratch.git

# OR

git clone https://github.com/Chumbaloo/postgres-scratch.git
```

Building:

```bash
# build
make build
```

A simple postgres environment

```bash
# debug
make debug

# start postgres
root@<containerID>:/app# ./scripts/start.sh

postgres=\#  

```

PgAdmin

```bash

# admin
make admin

```



Cleanup:

```bash

make down

```





