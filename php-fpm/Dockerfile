# Composer build
FROM composer as dependencies
RUN mkdir /root/.ssh
COPY id_rsa /root/.ssh
COPY known_hosts /root/.ssh
COPY ./app .
RUN composer install

# PHP-FPM build by using Composer build files
FROM php:fpm-alpine
COPY --from=dependencies ./app /tmp
RUN docker-php-ext-install pdo_mysql
CMD ["php-fpm"]
EXPOSE 9000
