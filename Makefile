up:
	docker-compose up -d
	docker exec php-fpm_inst cp -r /tmp/. /var/www
down:
	docker-compose down
	# docker system prune -af
	docker rmi app2_ngi_nx | docker rmi app2_php-fpm | docker rmi app2_database | echo "Everything clear"
	docker volume prune -f
g:
	docker-compose down
	# docker system prune -af
	git pull
res:
	docker-compose down
	# docker system prune -af
	git pull
	docker-compose up -d
