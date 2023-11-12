
# # Build the Docker image
# docker build -t my-django-app .

# # Run the Docker container
# docker run -d -p 8000:8000 my-django-app


# # Create a named volume for persistent data
# docker volume create my-django-data

# # Run the Docker container with the volume and port mapping
# docker run -d -p 8000:8000 -v my-django-data:/app/media --name my-django-container my-django-app



# Build the Docker image
docker build -t my-django-app .

# Run the Docker container with the volume and port mapping
docker run -d -v "$(pwd)"/django_web_app/db.sqlite3:/app/db.sqlite3 -p 8000:8000 --name my-django-container my-django-app

# docker run -d -v "$(pwd)"/django_web_app/db.sqlite3:/app/db.sqlite3 -p 8000:8000 
# --name my-django-container my-django-app

# Create a named volume for persistent data
# docker volume create my-django-data




# docker run -d -v /"$(pwd)"/django_web_app/db.sqlite3:/app/db.sqlite3 -p 8000:8000  --name  my-django-container my-django-app
 # To delete the container
# docker rm -f my-django-container
# docker run -d -p 8000:8000 --mount source=./db.sqlite3,target=/app/db.sqlite3 --name my-django-container my-django-app
# docker run -d -p 8000:8000 --mount type=bind,source="$(pwd)"/db.sqlite3,target=/app/db.sqlite3 --name my-django-container my-django-app
# Run the Docker container with the volume and port mapping

# docker run -d -p 8000:8000 --mount source=my-django-data,target=/app/media --name my-django-container my-django-app


# docker run -d -p 8000:8000 -v my-django-data:/app/media --name my-django-container my-django-app


# # To delete the container
# docker rm -f my-django-container

# # To start the container again and log in without signing up
# docker run -d -p 8000:8000 --mount source=my-django-data,target=/app/media --name my-django-container-2 my-django-app


# docker run -d -p 8000:8000 -v ./:/app/media -v ./db.sqlite3:/app/db.sqlite3 --name my-django-container my-django-app


# docker run -d -p 8000:8000 -v ./media:/app/media -v ./db.sqlite3:/app/db.sqlite3 --name my-django-container my-django-app


# docker run -d -p 8000:8000 --mount source=./db.sqlite3,target=/app/db.sqlite3 --name my-django-container my-django-app