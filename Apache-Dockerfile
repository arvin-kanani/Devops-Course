FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install apache2 elinks -y

RUN echo "This is a test docker file" > /var/www/html/index.html

ENTRYPOINT ["elinks"]
CMD ["localhost"]
