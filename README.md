# AI Job Teacher DB

Databasing for AI Job Teacher

## Run PostgreSQL using Docker

```bash
$ # Running db wih volume mounted for staging purposes
$ POSTGRES_PASSWORD=<your postgres password>
$ docker run --rm -p 5432:5432 --name postgres \
    -v /data/ai_job_teacher_db/staging:/var/lib/postgresql/data \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -d postgres

$ # stop container
$ docker stop postgres
```

## Create Database, Tables and Stored Procedures

Using `psql`:

```bash
$ POSTGRES_PASSWORD=<your postgres password>
$ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -f scripts/create_db.sql
$ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -d ai_3_staging -f scripts/create_tables.sql
$ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -d ai_3 -f scripts/create_tables.sql
# $ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -d ai_3_staging -f scripts/create_procedures.sql
# $ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -d ai_3 -f scripts/create_procedures.sql
```

## Seed Database

```bash
# seed database
$ POSTGRES_PASSWORD=<your postgres password>
$ PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h localhost -d ai_3_staging -f scripts/seed_db.sql
```
