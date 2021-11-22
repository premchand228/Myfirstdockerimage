FROM ubuntu 
RUN apt-get update
RUN apt-get install -y python3
RUN  apt-get install -y python3-pip
RUN pip3 install flask
RUN mkdir /opt/app

WORKDIR /opt/app
#COPY . /opt/app
COPY . .
#ENTRYPOINT FLASK_APP=/opt/app/app.py flask run --host 0.0.0.0  --port 5000
#ENTRYPOINT FLASK_APP=app.py flask run --host 0.0.0.0  --port 5000
#ENTRYPOINT ["python3"]
#CMD ["python3","app.py"]

