FROM cgr.dev/ay-ay-ron.dev/nginx:latest-dev

# Copy the HTML file to the NGINX default serving directory
COPY image-matcher-spa.html /usr/share/nginx/html/index.html
COPY images/*.png /usr/share/nginx/html/images/
# Copy custom NGINX configuration for better SPA handling
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80
