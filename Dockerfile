FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code into the container
COPY . .

EXPOSE 8080

# Command to run the Flask application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "src.wsgi:app"]
