FROM python:3.8-slim

LABEL project="backend-pokemon"

WORKDIR /usr/share/src

RUN apt-get update
#RUN apt-get install -y gcc
RUN apt-get install -y curl

COPY . /usr/share/src/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python","main.py"]
