# Use nginx as base image
FROM nginx:alpine

# Copy HTML file to nginx default dir
COPY ./src /usr/share/nginx/html

EXPOSE 80
