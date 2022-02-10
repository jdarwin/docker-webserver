FROM ubuntu 
RUN apt-get update 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
EXPOSE 80 CMD ["apache2ctl", "-D", "FOREGROUND"]
sudo docker build –t="mywebserver" . 
sudo docker run –d –p 82:80 mywebserver
