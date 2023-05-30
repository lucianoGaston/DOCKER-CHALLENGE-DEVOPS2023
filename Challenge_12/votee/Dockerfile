FROM  python:3.8-slim
WORKDIR /appVote
COPY . /appVote/
RUN apt-get update && apt-get install nano -y 
RUN pip install --no-cache-dir -r requirements.txt



EXPOSE 80

ENTRYPOINT [ "python","app.py"]