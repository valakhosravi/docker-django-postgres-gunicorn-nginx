FROM nginx:1.25

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
RUN mv /etc/nginx/conf.d/nginx.conf /etc/nginx/conf.d/default.conf