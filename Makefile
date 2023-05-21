.PHONY: up
up:
	docker-compose up -d

.PHONY: build
build:
	docker-compose build

.PHONY: restart
restart:
	docker-compose down
	docker-compose up -d

.PHONY: npm
npm:
	docker-compose exec php npm install
	docker-compose exec php npm run dev

.PHONY: cacheopt
cacheopt:
	docker-compose exec php composer dump-autoload -o
	docker-compose exec php php artisan optimize:clear
	docker-compose exec php php artisan optimize

.PHONY: cache
cache:
	docker-compose exec php php artisan config:cache
	docker-compose exec php php artisan cache:clear

.PHONY: migrate
migrate:
	docker-compose exec php php artisan migrate


