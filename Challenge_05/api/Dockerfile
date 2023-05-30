FROM python:3.8-slim

LABEL project="api-flask"

WORKDIR /usr/share/src

RUN pip install flask

COPY ./* /usr/share/src/

RUN ls -la /usr/share/src 

RUN mkdir templates && mv ./index.html ./templates/index.html


EXPOSE 8000

ENTRYPOINT [ "python" ,"app.py"]