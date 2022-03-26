
FROM python:latest

RUN mkdir /home/basic

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /home/basic

#to COPY the remote file at working directory in container
RUN git clone https://github.com/marinatest3003/basic.git
# Now the structure looks like this '/usr/app/src/test.py'


#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python", "./hello.py"]