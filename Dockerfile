FROM ubuntu 
RUN /usr/bin/sudo apt-get update 
RUN /usr/bin/sudo apt-get install –y apache2 
RUN /usr/bin/sudo apt-get install –y apache2-utils 
RUN /usr/bin/sudo apt-get clean 
EXPOSE 80 CMD ["apache2ctl", "-D", "FOREGROUND"]
ADD ./index.html /var/www/html