FROM nvidia/cuda:9.0-cudnn7-runtime


RUN apt-get update
RUN apt-get -y install python3-pip curl
RUN pip3 install keras tensorflow-gpu==1.10.1
