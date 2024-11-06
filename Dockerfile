# Dockerfile for static website

# Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the static website content into the Nginx container
COPY ./ /usr/share/nginx/html

# Expose port 86 (or 87)
EXPOSE 86

# Set the default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
