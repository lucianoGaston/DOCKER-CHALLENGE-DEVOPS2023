FROM python:3.8-slim

LABEL project="app_front"

WORKDIR /usr/share/src

#RUN apt-get update
#RUN apt-get install -y gcc

COPY . /usr/share/src/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python","app.py"]