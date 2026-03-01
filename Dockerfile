# Use official Nginx image as base
FROM nginx:alpine

# Remove default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy application files to Nginx web root
COPY app/index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web application
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
