# Use the official Apache HTTP server image from Docker Hub
FROM httpd:alpine

# Copy your website files into Apache's default directory
COPY ./ /usr/local/apache2/htdocs/

# Expose port 80 so the website can be accessed
EXPOSE 80
