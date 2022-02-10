FROM ubuntu 
RUN sudo apt-get update 
RUN sudo apt-get install –y apache2 
RUN sudo apt-get install –y apache2-utils 
RUN sudo apt-get clean 
EXPOSE 80 CMD ["apache2ctl", "-D", "FOREGROUND"]
ADD ./index.html /var/www/html