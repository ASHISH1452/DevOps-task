# Step 1: Use Nginx image
FROM nginx:alpine

# Step 2: Copy built React app to Nginx's public directory
COPY build/ /usr/share/nginx/html/

# Step 3: Expose port 80
EXPOSE 80

# Step 4: Start Nginx
CMD ["nginx", "-g", "daemon off;"]

