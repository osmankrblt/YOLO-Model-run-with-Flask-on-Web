# syntax=docker/dockerfile:1



FROM python:3.9.16-bullseye

LABEL version="1.0"
LABEL maintainer="HACI OSMAN KARABULUT"
LABEL maintainer.mail="h.osmankarabulut@gmail.com"

WORKDIR /usr/src/app
COPY . .

RUN apt-get update -y
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN apt-get install libgl1


RUN pip install --no-cache-dir -r yolov7/requirements.txt  --user
RUN pip install --no-cache-dir -r requirements.txt  --user

EXPOSE 5000

CMD ["python", "app.py"]