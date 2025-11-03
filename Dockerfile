# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the custom nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the static content of the website
COPY . /usr/share/nginx/html

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]