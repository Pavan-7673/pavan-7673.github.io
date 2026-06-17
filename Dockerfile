# Use official Nginx image
FROM nginx:latest

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY AWS_DevOps_Engineer_Pavan.pdf /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
