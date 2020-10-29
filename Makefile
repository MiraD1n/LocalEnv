up:
	docker-compose up -d
	docker exec php-fpm_inst cp -r /tmp/. /var/www
	# docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
down:
	docker-compose down
	# docker system prune -af
	docker rmi localenv_nginx; docker rmi localenv_php-fpm; docker rmi localenv_database; 
	# docker rmi \$(docker images --filter "dangling=true" -q --no-trunc)
	docker volume prune -f
