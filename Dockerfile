FROM centos:7

MAINTAINER "maninderbhui@gmail.com M S Bhui"

ENV var1="8.5.81"

RUN mkdir  /opt/tomcat

WORKDIR /opt/tomcat

RUN  yum install java -y

RUN  java -version


RUN curl  -O  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz

RUN  tar xfh  apache-tomcat-${var1}.tar.gz

RUN  mv apache-tomcat-${var1}/*   /opt/tomcat/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
