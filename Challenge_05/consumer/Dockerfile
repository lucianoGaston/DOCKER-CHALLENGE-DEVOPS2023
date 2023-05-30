FROM python:3.8-slim

LABEL project="consumer"

WORKDIR /usr/share/src

RUN pip install requests

COPY . /usr/share/src/

CMD [ "python","consumer.py" ]