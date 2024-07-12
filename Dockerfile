FROM python:3.11-slim
#creating working dir
WORKDIR /app

#copy files to working directory
COPY . /app

RUN apt-get update && pip install --no-cache-dir -r requirements.txt

CMD [ "sh","-c","python manage.py runserver 0.0.0.0:8000" ]
