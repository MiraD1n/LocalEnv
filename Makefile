up:
	docker-compose up -d
	docker exec php-fpm_inst cp -r /tmp/. /var/www
down:
	docker-compose down
	# docker system prune -af
g:
	docker-compose down
	docker rmi $(docker images |grep 'app2_*')
	# docker system prune -af
	git pull
res:
	docker-compose down
	docker rmi $(docker images |grep 'app2_*')
	# docker system prune -af
	git pull
	docker-compose up -d
