FROM nginx
MAINTAINER dillip
RUN apt-get update && apt-get install -y nginx
ADD . /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip / 
RUN apt-get install unzip
RUN unzip oxer.zip
CMD ["nginx", "-g", "daemon off;"]
