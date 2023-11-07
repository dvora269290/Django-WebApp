
# Build the Docker image
docker build -t my-django-app .

# Create a named volume for persistent data
docker volume create my-django-data

# Run the Docker container with the volume and port mapping
docker run -d -p 8000:8000 -v my-django-data:/app/media --name my-django-container my-django-app

