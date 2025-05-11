# Use the pre-existing devopsedu/webapp image
FROM devopsedu/webapp

# Set the working directory inside the container
WORKDIR /var/www/html/

# Copy your PHP code into the container
# Assuming your PHP code is in the same directory as this Dockerfile
COPY . /var/www/html/

# Expose port 80 to access the application
EXPOSE 80

# Restart the web server (Apache) to serve your PHP code
CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]

