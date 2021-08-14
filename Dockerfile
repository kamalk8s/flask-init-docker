FROM python:3.7

RUN apt-get update && apt-get upgrade -y
RUN apt-get install vim -y
RUN apt-get install pipenv -y
WORKDIR /
RUN git clone https://github.com/9app/flask-init.git
WORKDIR /flask-init

RUN pipenv install --python python3

CMD ["pipenv", "run", "python", "run.py"]