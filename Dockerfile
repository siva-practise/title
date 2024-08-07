# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Pygame and any other dependencies
RUN apt-get update && apt-get install -y \
    python3-pygame \
    && rm -rf /var/lib/apt/lists/*

# Run the Pygame script
CMD ["python", "pong.py"]
