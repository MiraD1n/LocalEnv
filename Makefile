up:
	docker-compose up -d
down:
	docker-compose down
	docker system prune -af
g:
	docker-compose down
	docker system prune -af
	git pull
