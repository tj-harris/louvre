# Dockerfile for TanStack Start (Development Example)
FROM node:22-alpine AS base

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (default is often 3000)
EXPOSE 3000

# Command to start the development server
CMD ["npm", "run", "dev"]