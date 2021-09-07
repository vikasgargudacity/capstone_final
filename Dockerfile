FROM nginx:alpine

## Step 1:
# Copy index.html code to nginx html directory
COPY . index.html /usr/share/nginx/html/

## Step 2:
# Expose port 80
EXPOSE 80
