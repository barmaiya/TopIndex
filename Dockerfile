FROM amazonlinux:2

RUN sudo yum update -y
RUN sudo yum install python  python3  pip -y
WORKDIR .
COPY /TopIndexTech .
RUN pip3  install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["Index.py"]
