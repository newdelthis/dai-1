# Use the official NGINX image
FROM nginx:latest

# Copy your web application files into the NGINX container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
