# Use the official Python image from Docker Hub
FROM python:alpine3.7 

# Copy application files to /app directory in the container
COPY . /app
WORKDIR /app

# Install dependencies
RUN pip install -r requirements.txt 

# Install pytest for running tests
RUN pip install pytest

# Expose port 5000
EXPOSE 5000 

# Set the entry point and default command
ENTRYPOINT [ "python" ] 
CMD [ "app.py" ]
