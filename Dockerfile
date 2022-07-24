FROM centos:7

MAINTAINER "maninderbhui@gmail.com M S Bhui"

RUN mkdir  /opt/tomcat

WORKDIR /opt/tomcat

RUN  yum install java -y

RUN  java -version

RUN curl  -O  https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.63.tar.gz

RUN  tar  xfvz  apache-tomcat-8.5.63.tar.gz

RUN  mv apache-tomcat-8.5.63/*   /opt/tomcat/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
