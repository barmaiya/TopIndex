FROM centos:latest

RUN yum update
RUN yum install python3-dev python3-pip -y
WORKDIR .
COPY /TopIndexTech .
RUN pip3  install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["Index.py"]
