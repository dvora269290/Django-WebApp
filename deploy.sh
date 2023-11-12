# #!/bin/bash
# echo "Enter version: "
# read version

# echo "Do you want to push the image to Artifact Registry with version $version? (y/n): "
# read push_to_registry

# if [ "$push_to_registry" == "y" ]; then

# Build the Docker image
docker build -t my-django-app:2.2 .

# Tag the Docker image with the artifact registry repository URL
docker tag my-django-app:2.2  me-west1-docker.pkg.dev/devconnect-final-project/dvorah-hassoun-artifacts/my-django-app:2.2

# Push the image to the Artifact Registry repository
docker push me-west1-docker.pkg.dev/devconnect-final-project/dvorah-hassoun-artifacts/my-django-app:2.2

fi




# gcloud auth configure-docker me-west1-docker.pkg.dev