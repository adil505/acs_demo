# Use the official Nginx image as the base
FROM nginx:alpine

# Copy application files to the default Nginx web root
COPY index.html /usr/share/nginx/html/index.html
COPY message.txt /usr/share/nginx/html/message.txt
COPY vfz.png /usr/share/nginx/html/vfz.png

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]