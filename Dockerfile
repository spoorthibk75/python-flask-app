# Use official Python image as base
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all files to container
COPY . .

# ... your existing Dockerfile content
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

