build:
	docker-compose build

debug:
	docker-compose up dev

admin:
	docker-compose up -d dev db-admin

down:
	docker-compose down