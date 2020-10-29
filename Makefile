up:
	docker-compose up -d
down:
	docker-compose down
	docker system prune -af
g:
	docker-compose down
	docker rmi app_*
	# docker system prune -af
	git pull
res:
	docker-compose down
	docker rmi app_*
	# docker system prune -af
	git pull
	docker-compose up -d
