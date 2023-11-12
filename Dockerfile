# Use an official Python runtime as the base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project requirements.txt file to the container
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

RUN pip install crispy-bootstrap4

# Copy the entire project directory to the container
COPY . .

# Expose the port on which your Django app will run (usually 8000)
EXPOSE 8000

# Run the Django development server
CMD python django_web_app/manage.py runserver 0.0.0.0:8000


# # Use an official Python runtime as the base image
# FROM python:3.10-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the project requirements.txt file to the container
# COPY requirements.txt .

# # Install the project dependencies
# RUN apt-get update && \
#     apt-get install -y libssl-dev && \
#     pip install --no-cache-dir --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt

# # Copy the entire project directory to the container
# COPY . .

# # Expose the port on which your Django app will run (usually 8000)
# EXPOSE 8000

# # Run the Django development server
# CMD python django_web_app/manage.py runserver 0.0.0.0:8000