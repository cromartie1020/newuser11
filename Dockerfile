FROM ubuntu
RUN mkdir /app
WORKDIR /app
ADD . /app/


ENV PYTHONBUFFERED 1
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8


RUN apt-get update

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt-get install -y python3.7  
RUN DEBIAN_FRONTEND=noninteractive  apt install -y python3-venv
#RUN python3 -m venv env
#RUN source env/bin/activate
RUN apt-get install -y apache2 && apt-get clean && rm -rf /va$
RUN apt-get install -y python3-pip
 
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
