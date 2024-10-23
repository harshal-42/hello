# Use an official Node.js 14 image as the base
FROM mcr.microsoft.com/node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 80

RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y telnet
