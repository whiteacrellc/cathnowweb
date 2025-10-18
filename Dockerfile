FROM nginx:stable-alpine as final

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/
COPY privacy_policy.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8080

