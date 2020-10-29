# app2 usage:
1. Clone this repository
> git clone <this repository>
2. Go to the folder app2
> cd ./LocalEnv
3. Change in /app2/php-fpm/Dockerfile path to your work id_rsa and known_hosts file (usually they stored in /root/.ssh/)
> COPY /root/.ssh/id_rsa /root/.ssh

> COPY /root/.ssh/known_hosts /root/.ssh
4. Start environment
> make start
