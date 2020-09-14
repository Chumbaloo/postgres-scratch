build:
	docker-compose build

debug:
	docker-compose run dev

# PGPASSWORD=${POSTGRES_PASSWORD} psql -U ${POSTGRES_USER} -h ${POSTGRES_DB} postgres
