# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the project requirements.txt file to the container
# COPY django_web_app/requirements.txt .
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the entire project directory to the container
COPY . .

# Expose the port on which your Django app will run (usually 8000)
EXPOSE 8000

# Run the Django development server
CMD python django_web_app/manage.py runserver 0.0.0.0:8000