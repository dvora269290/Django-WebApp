
# Stop and delete the Docker container
docker rm -f my-django-container

# Delete the Docker volume
docker volume rm my-django-data

# Delete the Docker image
docker rmi my-django-app