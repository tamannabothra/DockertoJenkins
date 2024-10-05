# Use the official Python image from Docker Hub
FROM python:alpine3.7 

# Copy application files to /app directory in the container
COPY . /app
WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt 

# Install pytest for running tests (if needed)
RUN pip install --no-cache-dir pytest

# Install bash (optional, if you want to use bash)
RUN apk add --no-cache bash

# Expose port 5000
EXPOSE 5000 

# Set the entry point and default command

CMD ["python" , "app.py" ]
