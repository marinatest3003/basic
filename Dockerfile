FROM ubuntu

RUN apt update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y software-properties-common python3.9 python3-pip python-configparser git
RUN pip install requests sha256

#installing git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
#Creating new folder in the ubuntu and cloaning our code into it to use it
RUN mkdir /home/basic
WORKDIR  /home/basic
RUN git clone https://github.com/marinatest3003/basic.git

WORKDIR /home/jfrog/basic

CMD [ "python", "./hello.py"]