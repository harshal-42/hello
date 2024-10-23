# Use an official Node.js 14 image as the base
FROM node:18.16-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 80 available to the world outside this container
EXPOSE 80

RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y telnet
