build:
	docker-compose build

debug:
	docker-compose run dev

admin:
	docker-compose up -d db-admin

down:
	docker-compose down