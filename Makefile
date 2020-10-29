up:
	docker-compose up -d
	docker exec php-fpm_inst cp -r /tmp/. /var/www
down:
	docker-compose down
	# docker system prune -af
	docker rmi app2_nginx | docker rmi app2_php-fpm | docker rmi app2_database | echo "Everything clear"
	docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
	docker volume prune -f
