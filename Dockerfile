# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code into the container
COPY . .

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the Flask application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "src.wsgi:app"]
