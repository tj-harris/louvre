# Stage 1: Build the TanStack Start application
# Use a specific, stable Node.js image for the build environment
FROM node:22-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and related lock files to leverage Docker's layer caching
COPY package*.json ./

# Install dependencies (use your specific package manager command, e.g., 'npm install' or 'pnpm install')
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the application for production. TanStack Start outputs to the 'dist' directory by default
RUN npm run build

# Stage 2: Serve the static files with Nginx
# Use a very lightweight Nginx image
FROM nginx:alpine AS production

# Copy the built static files from the 'build' stage to the Nginx static file directory
# The default output directory for TanStack Start is './dist'
COPY --from=build /app/dist/client /usr/share/nginx/html

# Expose port 80, the default for Nginx
EXPOSE 80

# The Nginx server starts automatically as the default command of the nginx:alpine image
CMD ["nginx", "-g", "daemon off;"]
