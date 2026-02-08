# Dockerfile

FROM ubuntu:20.04

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Command to run the application
CMD ["python3", "app.py"]