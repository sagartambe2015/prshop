# Use the official Node.js image as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

COPY frontend .

# Copy package.json and package-lock.json (or yarn.lock) to the container
##COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Build the React application
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the React application
CMD ["npm", "start"]
