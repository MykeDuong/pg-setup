docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume rm $(docker volume ls)
docker image rm $(docker image ls)
sudo rm -rf ./shared/data
