FROM nginx:alpine 
COPY fichier-site /usr/share/nginx/html 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"] 
