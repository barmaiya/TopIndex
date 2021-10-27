FROM amazonlinux:2

RUN  yum update -y
RUN  yum install python  python3  pip -y
WORKDIR .
COPY /TopIndexTech .
RUN pip3  install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["Index.py"]
