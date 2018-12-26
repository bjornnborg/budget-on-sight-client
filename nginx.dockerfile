FROM nginx:latest

COPY nginx /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
