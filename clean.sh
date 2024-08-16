CONTAINERS="postgres-master postgres-replica pgbouncer-master pgbouncer-replica"
VOLUMES="pg-setup_postgres-replica-data pg-setup_postgres-master-data"
IMAGES="pg-setup-postgres-master pg-setup-postgres-replica pg-setup-pgbouncer-master pg-setup-pgbouncer-replica"

echo "Stopping containers..."
docker stop $CONTAINERS

echo "Removing containers..."
docker rm $CONTAINERS 

echo "Removing used volumes..."
docker volume rm $VOLUMES 

echo "Removing used images..."
docker image rm $IMAGES 

echo "Removing shared folder..."
sudo rm -rf ./shared/data
