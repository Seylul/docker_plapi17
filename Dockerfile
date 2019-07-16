FROM centos

MAINTAINER Eylul Akbas <eylul.akbas@sekom.com.tr>

WORKDIR /home/plapi17

RUN yum -y upgrade
RUN yum -y install wget
RUN yum -y install python-setuptools
RUN wget http://download.proceranetworks.com/pldownload/python/plapi/.builds/17.2.0py1/plapi-17.2.0py1-py2.7-linux-x86_64.egg
RUN mkdir /output

ADD line.sh /script/line.sh
ADD log_messages.txt /log/log_messages.txt
ADD log.txt     /log/log.txt
ADD report.py /script/report.py

RUN ["bash", "-c", "/script/line.sh 1"]
RUN easy_install plapi-17.2.0py1-py2.7-linux-x86_64.egg
RUN ["bash", "-c", "/script/line.sh 2"]
RUN ["python", "/script/report.py", "<ARGD1>", "<ARGD2>"]
